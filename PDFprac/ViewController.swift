//
//  ViewController.swift
//  PDFprac
//
//  Created by JillOU on 2020/10/18.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {
    @IBOutlet weak var pdfView: PDFView!
    @IBOutlet weak var pdfThumbnailView: PDFThumbnailView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //generate PDFView
        guard let pdfUrl = Bundle.main.url(forResource: "pdfPracFile", withExtension: "pdf") else {return}
        //pdfView = PDFView(frame: self.view.bounds)//純code建立需要
        pdfView.document = PDFDocument(url: pdfUrl)
        pdfView.autoScales = true
        pdfView.usePageViewController(true, withViewOptions: nil)
        //self.view.addSubview(pdfView)//純code建立需要
        
        //generate PDFThumbnailView
        pdfThumbnailView.pdfView = pdfView
        pdfThumbnailView.backgroundColor = .darkGray
        pdfThumbnailView.layoutMode = .horizontal
        pdfThumbnailView.thumbnailSize = CGSize(width: pdfThumbnailView.frame.width/10, height: pdfThumbnailView.frame.height)

    }
}

