#!/usr/bin/env python
# coding=utf-8
"""
Model architecture
Author: Lei Cao
"""
import torch
import torch.nn as nn
import torch.nn.functional as F
from torchvision.models import resnet34, resnet50


class MaxPool(nn.Module):

    def __init__(self, L=512, D=128, k=50, dropout=False, pretrained=True,
                 output_score=False):
        super(MaxPool, self).__init__()
        self.k = k

        #ResNet34 Backbone
        m1 = resnet34(pretrained=pretrained)
        m_list = []
        for m in m1.children():
            if isinstance(m, nn.AdaptiveAvgPool2d):
                break
            m_list.append(m)
        self.feature_extractor = nn.Sequential(*m_list)
        self.pool = nn.AdaptiveAvgPool2d(1)
        self.classifier = nn.Linear(512, 2)
        self.extracted_features = []

    def forward(self, x):
        x = x.view(-1, 3, 256, 256)
        x = self.feature_extractor(x)
        x = self.pool(x)
        x = x.view(x.shape[0], x.shape[1])
        x = x.view(-1, self.k, 512)
        # x = torch.amax(x, dim=1)
        _, top_index = x.max(dim=1)
        x = x.max(dim=1)[0]
        x_ = x.detach().cpu().numpy()
        self.extracted_features.append(x_)
        out = self.classifier(x)
        return out, top_index
        # return out


if __name__ == "__main__":
    from torch.utils.data import DataLoader
    from data import MILDataset
    from utils import Compose, ToTensor
    from torchvision import transforms

    model = MaxPool()
    model.eval()
    transform = transforms.Compose([
        transforms.ToTensor(),
        transforms.Normalize([.5,.5,.5], [.1,.1,.1])
    ])
    csv_path = "../scripts/tcga_csv/fold1/val.csv"
    lmdb_dir = "../scripts/lmdb_dir"
    dataset = MILDataset(csv_path, lmdb_dir, 50, transform)
    loader = DataLoader(dataset, batch_size=2, shuffle=False, num_workers=6)
    x,y,z = iter(loader).__next__()
    out = model(x)
    import ipdb;ipdb.set_trace()

