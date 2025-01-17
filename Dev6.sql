USE [Dev6]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [nvarchar](100) NOT NULL,
	[MaDV] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NULL,
	[ChiSoDau] [int] NULL,
	[ChiSoCuoi] [int] NULL,
 CONSTRAINT [PK_CHITIETHOADONDVBV] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDV] [nvarchar](100) NOT NULL,
	[TenDichVuBatBuoc] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[DVT] [nvarchar](50) NULL,
	[LoaiDichVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DICHVUBATBUOC] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [nvarchar](100) NOT NULL,
	[NgayLapHD] [date] NULL,
	[PhuongThucThanhToan] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaPhong] [nvarchar](100) NULL,
	[IDNhanVien] [nvarchar](100) NULL,
 CONSTRAINT [PK_HOADONDVBATBUOC] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOPDONG]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOPDONG](
	[SoHopDong] [nvarchar](100) NOT NULL,
	[NgayLap] [date] NULL,
	[ThoiGianBatDau] [date] NULL,
	[ThoiGianKetThuc] [date] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[PhuongThucThanhToan] [nvarchar](50) NULL,
	[IDNhanVien] [nvarchar](100) NULL,
	[MSSV] [nvarchar](10) NULL,
	[MaPhong] [nvarchar](100) NULL,
 CONSTRAINT [PK_HOPDONG] PRIMARY KEY CLUSTERED 
(
	[SoHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[IDNhanVien] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[IDUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MaPhong] [nvarchar](100) NOT NULL,
	[TenPhong] [nvarchar](10) NULL,
	[Khu] [nvarchar](10) NULL,
	[Tang] [nvarchar](10) NULL,
	[SoGiuong] [int] NULL,
	[SoNguoiO] [int] NULL,
 CONSTRAINT [PK_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHUHUYNH]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHUHUYNH](
	[IDPhuHuynh] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[NgheNghiep] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[QuanHe] [nvarchar](20) NULL,
	[MSSV] [nvarchar](10) NULL,
 CONSTRAINT [PK_PHUHUYNH] PRIMARY KEY CLUSTERED 
(
	[IDPhuHuynh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MSSV] [nvarchar](10) NOT NULL,
	[TenSinhVien] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Lop] [nvarchar](50) NULL,
	[Khoa] [nvarchar](50) NULL,
	[SoCCCD] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[IDUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[IDUser] [nvarchar](100) NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[ConfirmPassword] [nvarchar](20) NULL,
	[EmailDaXacMinh] [bit] NULL,
	[VaiTro] [nvarchar](10) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaThongBao] [nvarchar](100) NOT NULL,
	[NoiDung] [nvarchar](100) NULL,
	[ThoiGianThongBao] [datetime] NULL,
	[TrangThaiThongBao] [bit] NULL,
	[LoaiThongBao] [nvarchar](50) NULL,
	[IDUser] [nvarchar](100) NULL,
	[HinhAnh] [varchar](255) NULL,
 CONSTRAINT [PK_ThongBao] PRIMARY KEY CLUSTERED 
(
	[MaThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YEUCAUDOITRAPHONG]    Script Date: 10/10/2024 3:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YEUCAUDOITRAPHONG](
	[MaYeuCau] [nvarchar](50) NOT NULL,
	[MaSinhVien] [nvarchar](50) NOT NULL,
	[MaPhongHienTai] [nvarchar](100) NOT NULL,
	[MaPhongMoi] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](20) NOT NULL,
	[NgayYeuCau] [datetime] NOT NULL,
	[LyDoDoiPhong] [nvarchar](200) NULL,
	[LyDoTraPhong] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaYeuCau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'14b4915e-271a-4464-80a6-7af726a2c432', N'34184399-8186-4adf-b7fd-ddec6897cb5e', NULL, 237, 278)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'14b4915e-271a-4464-80a6-7af726a2c432', N'dcfbf29e-bcc3-4c61-a44a-ea41cef0b55d', NULL, 12789, 13000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'14b4915e-271a-4464-80a6-7af726a2c432', N'dd3791cb-3070-4b3a-b3f1-64c1fbb5916a', NULL, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'378a5534-bb80-4aed-a3ad-46a8e1694e06', N'11b10723-38d8-4c45-a530-7741f1a81bf2', 4, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'5b040b75-5c06-4c45-b3a0-3838a32601dc', N'dcfbf29e-bcc3-4c61-a44a-ea41cef0b55d', NULL, 32, 233)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'5b040b75-5c06-4c45-b3a0-3838a32601dc', N'dd3791cb-3070-4b3a-b3f1-64c1fbb5916a', NULL, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'84ebd48d-9e6f-4bba-9185-68d44c7e920d', N'11b10723-38d8-4c45-a530-7741f1a81bf2', 1, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'84ebd48d-9e6f-4bba-9185-68d44c7e920d', N'f680db71-d028-4b4d-90a5-01e6a921157e', 2, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'8722d0bf-930d-4a27-987e-95024336712a', N'11b10723-38d8-4c45-a530-7741f1a81bf2', 4, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'8722d0bf-930d-4a27-987e-95024336712a', N'b2af43da-ad9c-4548-9b24-5db24cdac4bb', 1, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'c79c70d7-3b6f-441f-b2d7-ab0e88fd3a8f', N'11b10723-38d8-4c45-a530-7741f1a81bf2', 1, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'ef7cf155-5201-45a4-97fc-9c26974e297a', N'34184399-8186-4adf-b7fd-ddec6897cb5e', NULL, 12345, 12366)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'ef7cf155-5201-45a4-97fc-9c26974e297a', N'dcfbf29e-bcc3-4c61-a44a-ea41cef0b55d', NULL, 12345, 23244)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'ef7cf155-5201-45a4-97fc-9c26974e297a', N'dd3791cb-3070-4b3a-b3f1-64c1fbb5916a', NULL, NULL, NULL)
GO
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'11b10723-38d8-4c45-a530-7741f1a81bf2', N'DV-WIFI 7 ngày', 30000, N'Gói ', N'DV thông thường')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'18c47901-45f9-4912-a616-fb97702eb6e6', N'DV-WIFI 30 ngày', 120000, N'Gói ', N'DV thông thường')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'34184399-8186-4adf-b7fd-ddec6897cb5e', N'Nước', 8000, N'm³', N'DV Bắt Buộc')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'b2af43da-ad9c-4548-9b24-5db24cdac4bb', N'DV-WIFI 3 ngày', 15000, N'Gói ', N'DV thông thường')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'dcfbf29e-bcc3-4c61-a44a-ea41cef0b55d', N'Điện', 3000, N'kWh', N'DV Bắt Buộc')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'dd3791cb-3070-4b3a-b3f1-64c1fbb5916a', N'Phí thuê phòng', 200000, N'người/tháng', N'DV Bắt Buộc')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'f680db71-d028-4b4d-90a5-01e6a921157e', N'DV-WIFI 1 ngày', 7000, N'Gói ', N'DV thông thường')
GO
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'14b4915e-271a-4464-80a6-7af726a2c432', CAST(N'2024-08-28' AS Date), N'Tiền Mặt', N'Đã thanh toán', N'5cc4091d-1f4d-497d-8318-1534184cfda3', N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'378a5534-bb80-4aed-a3ad-46a8e1694e06', CAST(N'2024-09-01' AS Date), N'Tiền Mặt', N'Đang thanh toán', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'447876f5-c455-4dbe-9358-d61da8cf4de1', CAST(N'2024-09-01' AS Date), N'Tiền Mặt', N'Đang thanh toán', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'5b040b75-5c06-4c45-b3a0-3838a32601dc', CAST(N'2024-09-24' AS Date), N'Chuyển Khoản', N'Đang thanh toán', N'ffaf7242-82b2-42e0-ae6c-610891f9a940', N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'84ebd48d-9e6f-4bba-9185-68d44c7e920d', CAST(N'2024-08-27' AS Date), N'Tiền Mặt', N'Đang thanh toán', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'8722d0bf-930d-4a27-987e-95024336712a', CAST(N'2024-08-27' AS Date), N'Tiền Mặt', N'Đang thanh toán', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'c79c70d7-3b6f-441f-b2d7-ab0e88fd3a8f', CAST(N'2024-08-27' AS Date), N'Tiền Mặt', N'Đã thanh toán', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'ddcdc425-831b-4634-abc0-393cb522d7ed', CAST(N'2024-09-26' AS Date), N'Chuyển Khoản', N'Đang thanh toán', N'28b9bd80-aab5-4c54-b42b-5d1d693741ed', N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'ef7cf155-5201-45a4-97fc-9c26974e297a', CAST(N'2024-08-31' AS Date), N'Tiền Mặt', N'Đã thanh toán', N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295', N'bb76a518-2776-4217-ba3d-10e590c167dd')
GO
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'1323232434345', CAST(N'2024-09-02' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Đang chờ ', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090038', N'1916daea-6987-4436-aeb9-d4412e5755c6')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-0ophqfr8eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4095533', N'50cc9f6a-5069-4955-83b3-4d62e9d3520a')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c10008eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4091093', N'28b9bd80-aab5-4c54-b42b-5d1d693741ed')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c10c18e9e7', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090015', N'1916daea-6987-4436-aeb9-d4412e5755c6')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c10c18eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4000033', N'1d3c2e4f-0278-4705-aed5-7415cfd04dee')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c10cr8eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4091733', N'31fa9dc6-904c-4589-8215-7f7adc3b17b0')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c10vv8eeee', CAST(N'2024-08-22' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090033', N'28b9bd80-aab5-4c54-b42b-5d1d693741ed')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c10zz8eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4044433', N'1d3c2e4f-0278-4705-aed5-7415cfd04dee')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c11118eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4091133', N'31fa9dc6-904c-4589-8215-7f7adc3b17b0')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c14448eeee', CAST(N'2024-08-20' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4011133', N'1d3c2e4f-0278-4705-aed5-7415cfd04dee')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c1bbb8eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4091033', N'28b9bd80-aab5-4c54-b42b-5d1d693741ed')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c1ght8eeee', CAST(N'2024-08-29' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4091393', N'31fa9dc6-904c-4589-8215-7f7adc3b17b0')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c77778eeee', CAST(N'2024-08-23' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4091113', N'28b9bd80-aab5-4c54-b42b-5d1d693741ed')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33ddddd8eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4066633', N'28b9bd80-aab5-4c54-b42b-5d1d693741ed')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-3bbbnju8eeee', CAST(N'2024-08-24' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4092233', N'50cc9f6a-5069-4955-83b3-4d62e9d3520a')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-3vghefj8eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4091933', N'50cc9f6a-5069-4955-83b3-4d62e9d3520a')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-bbbbbbb8eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4091333', N'31fa9dc6-904c-4589-8215-7f7adc3b17b0')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-mswghuf8eeee', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4098933', N'50cc9f6a-5069-4955-83b3-4d62e9d3520a')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'75e178cd-80ae-4016-a89c-89e9fcc7cc06', CAST(N'2024-08-16' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090006', N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'7edf856e-3982-40d7-940f-cd0127f3694e', CAST(N'2024-09-23' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4080043', N'ffaf7242-82b2-42e0-ae6c-610891f9a940')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'9ede383b-287a-4942-9e7e-6fabe716bf87', CAST(N'2024-08-16' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090001', N'5cc4091d-1f4d-497d-8318-1534184cfda3')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'bacb43a1-d784-4be9-afa0-146a02927ddd', CAST(N'2024-08-17' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090039', N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295')
GO
INSERT [dbo].[NHANVIEN] ([IDNhanVien], [HoTen], [SDT], [DiaChi], [ChucVu], [TinhTrang], [IDUser]) VALUES (N'5348c289-511e-47b3-8f8d-530022313167', N'Lê Thị Vật ', N'0394192843', N'Huế', N'Tạp Vụ', N'Đã Nghỉ Việc', NULL)
INSERT [dbo].[NHANVIEN] ([IDNhanVien], [HoTen], [SDT], [DiaChi], [ChucVu], [TinhTrang], [IDUser]) VALUES (N'bb76a518-2776-4217-ba3d-10e590c167dd', N'Nguyễn Duy Hưng', N'0949201134', N'Huế', N'Quản Lý', N'Đang Làm', N'd6096885-7976-43bb-ad25-d93d9420af7d')
INSERT [dbo].[NHANVIEN] ([IDNhanVien], [HoTen], [SDT], [DiaChi], [ChucVu], [TinhTrang], [IDUser]) VALUES (N'bfc6afb2-2dbe-4653-a7c8-1c16493f9d45', N'Trần Bình An', N'0359201059', N'Quảng Ngãi', N'Bảo Vệ', N'Đã Nghỉ Việc', NULL)
GO
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'1916daea-6987-4436-aeb9-d4412e5755c6', N'B103', N'B', N'1', 8, 1)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'1d3c2e4f-0278-4705-aed5-7415cfd04dee', N'A102', N'A', N'1', 4, 3)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'28b9bd80-aab5-4c54-b42b-5d1d693741ed', N'A103', N'A', N'1', 8, 5)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'31fa9dc6-904c-4589-8215-7f7adc3b17b0', N'A105', N'A', N'1', 4, 4)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'50cc9f6a-5069-4955-83b3-4d62e9d3520a', N'B101', N'B', N'1', 4, 4)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'5cc4091d-1f4d-497d-8318-1534184cfda3', N'A106', N'A', N'1', 4, 1)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'603f78bc-11a0-4339-b47c-8d91e8020936', N'A101', N'A', N'1', 4, 0)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'944dff45-b156-445f-9d6d-750e44d70de2', N'B106', N'B', N'1', 4, 0)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295', N'B104', N'B', N'1', 8, 2)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'f18351be-63e7-4a4f-9f1b-0d701fdb077f', N'A104', N'A', N'1', 8, 0)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'fe7ea518-f933-41e3-8e5d-a77805f57afd', N'B105', N'B', N'1', 4, 0)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'ffaf7242-82b2-42e0-ae6c-610891f9a940', N'B102', N'B', N'1', 4, 1)
GO
INSERT [dbo].[PHUHUYNH] ([IDPhuHuynh], [HoTen], [NgaySinh], [NgheNghiep], [SDT], [QuanHe], [MSSV]) VALUES (N'0c82878b-c1b1-44be-94e7-8a167f56911b', N'Lưu Thị Khai Hoang', CAST(N'2000-03-12' AS Date), N'thợ May', N'0993291039', N'Ba', N'21K4090001')
INSERT [dbo].[PHUHUYNH] ([IDPhuHuynh], [HoTen], [NgaySinh], [NgheNghiep], [SDT], [QuanHe], [MSSV]) VALUES (N'2294ac38-b30d-4da9-ac45-44f395960b1d', N'Mai Thị Thắm', CAST(N'2024-08-24' AS Date), N'thợ May', N'0993291039', N'Mẹ', N'21K4090001')
GO
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4000033', N'Tống Trần Hạch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4011133', N'Lý Mạc Sầu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4044433', N'sdfdsfds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4066633', N'gggsfdsgg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4080043', N'Nguyễn Thị Ngọc Quý', CAST(N'2003-05-18' AS Date), N'Nữ', N'K55 THKT', N'HTTTKT', N'046303004339', N'Huế', N'0399836675', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521')
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090001', N'Huỳnh Ngọc Trợ', CAST(N'2003-07-09' AS Date), N'Nam', N'K55 THKT', N'HTTTKT', N'03929109111', N'Huế', N'0993392010', N'f322ec3c-5d23-4618-8272-26dfd09e77f9')
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090006', N'Nguyễn Bùi sum Hợp', CAST(N'2003-08-22' AS Date), N'Nam', N'K55 THKT', N'HTTTKT', N'0493291039102', N'Huế', N'0939291029', N'd263e262-6cfd-471b-8936-c0958abfcecf')
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090015', N'Nguyễn Đức Hiếu', CAST(N'2003-08-14' AS Date), N'Nam', N'K55 THKT', N'HTTTKT', N'0463821958102', N'Huế', N'0833333310', N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090033', N'ggxfsdggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090038', N'3', CAST(N'2003-07-10' AS Date), N'v', N'v', N'v', N'v', N'v', N'v', NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090039', N'Trương Đình Quân', CAST(N'2003-07-10' AS Date), N'Nam', N'K55 THKT', N'HTTTKT', N'03929109310', N'Huế', N'0833333310', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c')
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4091033', N'ggggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4091093', N'ggfdfggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4091113', N'gggfdfdgg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4091133', N'ggxvdfgggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4091333', N'dfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4091393', N'gggdfdfgg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4091733', N'ggdfdfggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4091933', N'dffdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4092233', N'ggfffggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4095029', N'Lê Thị Duyên', CAST(N'2003-07-04' AS Date), N'Nữ', N'K55 Thống Kê Kinh doanh', N'Thống kê', N'093920392039', N'Hà Tĩnh', N'0939293049', N'2177c075-a0b4-4df4-acf9-c539bc824ec2')
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4095533', N'fd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4098933', N'ggsfsdfggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'14601a11-f790-4f54-891b-2c0326c0d30e', N'nguyenduchieu', N'abCC123@#', N'odiacanhan@gmail.com', N'abCC123@#', 1, N'User')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', N'ngocquy', N'Ngocquy18*5', N'nguyenngocquy182752@gmail.com', N'Ngocquy18*5', 1, N'User')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'2177c075-a0b4-4df4-acf9-c539bc824ec2', N'Admin', N'abc123', N'Admin@gmail.com', N'abc123', 1, N'Admin')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', N'Trương Đình Quân', N'songgio10', N'quanngau10@gmail.com', N'songgio10', 1, N'User')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'd263e262-6cfd-471b-8936-c0958abfcecf', N'Nguyễn Bùi Sum Hợp', N'hop1234', N'hopn5586@gmail.com', N'hop1234', 1, N'User')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'd6096885-7976-43bb-ad25-d93d9420af7d', N'duyhung', N'abc123', N'duyhung123@gmail.com', N'abc123', 1, N'Employee')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'f322ec3c-5d23-4618-8272-26dfd09e77f9', N'TroHuynh', N'12345', N'trohuynh123@gmail.com', N'12345', 1, N'User')
GO
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'006a9fdf-8704-4241-8af0-db02915bbcec', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-27T14:41:57.430' AS DateTime), 0, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'00be8425-34f3-4bd3-bd26-886fec470865', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T09:27:12.307' AS DateTime), 0, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'0197ff38-3322-4715-bc33-204f315dacaa', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-10-04T08:28:12.410' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'021c4540-fb46-47dc-9e3e-a4a3acc60c0f', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-22T11:02:17.330' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'02b42af3-427e-4031-ad0f-df0064d8451f', N'Sự Cố: hihih', CAST(N'2024-09-26T10:55:20.297' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["MB-NGUY\u1EC5N TH\u1ECB NG\u1ECDC QU\u00FD-0399836675.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'03c52b50-b296-4237-94cb-3ae3b8ff1c7f', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T16:37:56.070' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'04a27899-b712-4536-bffe-81f7f25a7782', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T15:40:26.023' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'065ae620-d063-441d-bb13-8e8fdb1334c5', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:59.667' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'0f6e93e9-7039-46a5-9db5-30e74fcb1e73', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T11:30:39.013' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'152fec46-821a-4432-afc7-77e63f2d1fb3', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-01T00:41:33.970' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'15bdf06a-f987-4fb9-b80b-089a90da4e4d', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:34.053' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'16324f81-7933-42e8-98a1-b6df4f7f3a57', N'Phòng A106 bị hư 1 cái quạt trần. Mong ban quản lý sớm giải quyết!', CAST(N'2024-08-27T23:09:31.037' AS DateTime), 1, N'Sự cố', N'2177c075-a0b4-4df4-acf9-c539bc824ec2', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'171297be-433f-4396-b949-723008fa9bb4', N'Đã có hóa đơn điện, nước. Thanh toán', CAST(N'2024-08-27T10:25:09.440' AS DateTime), 1, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'17c3e171-0b49-454d-9326-23fce3759043', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T11:51:01.253' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'1c9c5bb5-f9e4-4c9a-8983-daec63322d67', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T16:50:41.793' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'1d396260-9a65-4ccc-b7bc-d21c6c803d4d', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:16:14.367' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'1e9619b3-eeec-4dd0-964e-254e8c292891', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-29T16:51:40.580' AS DateTime), 0, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'22b7b1df-e82a-4f00-9fe2-f6441268ceb3', N'Phòng của bạn đã thanh toán!', CAST(N'2024-09-02T22:40:41.030' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'23915df9-1e25-44bd-a5f2-0883e63273cd', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T10:38:10.157' AS DateTime), 0, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'253e0bd8-a08d-40e4-802e-894071ffd74f', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-27T11:06:29.900' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'297a9258-f00d-4bb5-afbf-3513adcadbce', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:23:12.120' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'2b716df0-33f2-468e-926a-4f2346be32ca', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T16:51:26.433' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'2bfef3d9-bb1b-433f-9847-b1a902594aef', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T14:53:55.663' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'2cb32e83-2641-4b0d-b273-2573033c651f', N'Sự Cố: aaaaaa', CAST(N'2024-09-26T11:37:06.203' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["MB-NGUY\u1EC5N TH\u1ECB NG\u1ECDC QU\u00FD-0399836675.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'2d7357f4-2e98-4d52-9b5f-8e38fb507ed9', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-02T22:40:36.773' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'2e66a7e4-9984-4421-986c-5521c37ce628', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:16:16.787' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'2eb818b4-93a8-455f-a2f6-4401a613a621', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-08-26T22:51:52.037' AS DateTime), 1, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'30df35f4-8aa5-4c19-a77a-0572bd80c017', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-27T14:41:57.430' AS DateTime), 1, NULL, N'2177c075-a0b4-4df4-acf9-c539bc824ec2', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'332332e7-ac63-430f-8230-f312ae5731ed', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:23:10.767' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'33b3513a-f1e4-47a7-a19d-9aec41c7d2cd', N'Sự Cố: ngân hàng lỗi k chuyển được tiền
', CAST(N'2024-09-25T16:52:57.377' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["MB-NGUY\u1EC5N TH\u1ECB NG\u1ECDC QU\u00FD-0399836675.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'33f1c149-f47e-472c-ac5f-06c96e2929a5', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T13:32:58.347' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'33f93c59-216c-4626-9d7b-e0900f78f8c8', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-29T16:50:04.450' AS DateTime), 0, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'3459ebdc-b25a-42ca-8037-dd78d91fcab9', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T15:37:38.457' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'35714774-898d-4ef5-9841-a1de5066f264', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T08:27:38.297' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'38e7062b-52d5-4f02-b380-ba959da46c13', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-26T22:51:10.497' AS DateTime), 1, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'3a76e1a9-a1e3-4613-b802-6e0efc73188e', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T16:46:23.547' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'3c21a64a-9722-4a0b-8f29-2b28b42c4b37', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-30T14:17:04.777' AS DateTime), 0, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'3c72712a-8aec-42b5-a271-d95209fd64d5', N'Hợp đồng số 2fef0cc8-dcc0-4115-b410-a8b15a09743a đã bị hủy với lý do: Thông tin đã bị sai', CAST(N'2024-08-22T13:27:21.883' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'3e0ac1ee-834c-4cc3-a943-28df8b3dda7c', N'Đã có hóa đơn điện, nước. Thanh toán', CAST(N'2024-08-27T10:31:33.310' AS DateTime), 1, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'3e7b781c-f5a5-4c73-a62d-14fde4125bc8', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:50.730' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'3ffe0786-56af-46b2-bfc1-16ed787cfa15', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-27T11:06:29.930' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'4056a7e6-3bf1-4898-9f3a-24ce7bc8791a', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:53.707' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'4503bb70-5660-4052-9503-4a8f763f58b4', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-01T00:43:31.047' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'489ece7a-d297-4048-a2e3-5b377e75b2bc', N'Sự Cố: ảnh sơ đồ ', CAST(N'2024-09-27T15:05:47.227' AS DateTime), 0, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["/image/Usecase_Qu\u1EA3n l\u00ED danh m\u1EE5c.drawio (1).png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'4b9722a3-d4a9-4199-bb80-31eed9e4e8ab', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-09-23T13:24:21.587' AS DateTime), 0, NULL, N'2177c075-a0b4-4df4-acf9-c539bc824ec2', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'4c771a83-c2b4-4c79-9d2a-0541dcd4d051', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T16:42:45.017' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'4ed505cf-bc28-4be5-9dde-91c0a7b97ef4', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-27T13:49:30.597' AS DateTime), 1, NULL, N'2177c075-a0b4-4df4-acf9-c539bc824ec2', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'50568e1a-5b27-4a4d-a851-bfa4e347497f', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:31.760' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'5448c6d0-2e75-45dd-93b3-9622771a8f05', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:39.117' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'5491f3e0-7424-4a6d-a2f5-4843c2e1553f', N'Sự Cố: hình ảnh ngân hàng lỗi
', CAST(N'2024-09-27T15:05:30.673' AS DateTime), 0, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["/image/MB-NGUY\u1EC5N TH\u1ECB NG\u1ECDC QU\u00FD-0399836675.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'54bdfc0b-e7ad-4b92-8960-1ac29cd05358', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T16:54:38.163' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'5b844b97-e4e2-41bc-a798-aee7c591a9ef', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T10:10:20.513' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'5eba712e-1a6a-413c-a1e7-cd9fc5d662db', N'Phòng của bạn đã thanh toán!', CAST(N'2024-09-01T00:42:19.837' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'60e48d9b-e8a6-49e0-8612-3bf3f1330efc', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T09:27:07.823' AS DateTime), 0, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'64310821-1d47-4e04-a7ae-3ef5c17150d4', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T09:49:51.310' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'6569b499-5f0a-4b2c-aeed-aa029740a1ed', N'Hợp đồng của bạn đã được phê duyệt', CAST(N'2024-08-22T11:21:30.867' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'6623f126-48fe-438b-9c5a-0b822ba6060d', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T13:36:04.870' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'66bf2766-5fbc-43cb-a276-8b88c3f93413', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T14:04:04.990' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'67a236e3-5fc6-4db9-96fb-8898123cfd9c', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:16:05.470' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'6807c1a3-7e45-47c1-9487-3e6d31d1b048', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T13:25:19.017' AS DateTime), 0, N'Bình Thường', NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'6b065f38-5f9d-47d0-811f-b318059a6f61', N'Sự Cố: gre', CAST(N'2024-09-27T12:35:11.417' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["/image/82a6bdf8-ea57-435a-8800-fca407ac466c.jpg"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'6b131d7e-42cd-4866-aded-159084481a23', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-28T14:42:06.700' AS DateTime), 1, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'6b17fdf0-1097-4ee9-a198-431ca216d015', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-02T22:40:36.787' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'6b700773-9072-49f0-909e-1ed0761da674', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T16:58:26.530' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'6fcc97db-d5a3-4afd-ba32-8c4bfe73c381', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:29.560' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'73473909-42d6-491c-9965-451153f539f4', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T16:24:05.273' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'734f46bc-0d51-4c50-8241-efe86d4cb076', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:24:54.610' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'7560d156-137b-4d5e-ab30-256b6429e13f', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-30T16:38:01.577' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'76c48ba1-0006-4ca8-9352-2ee2b4ff1b36', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T16:42:45.027' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'7a968f7d-f7d3-4a6d-86fa-1f28ac294727', N'Đã có hóa đơn điện, nước. Thanh toán', CAST(N'2024-08-27T10:31:33.300' AS DateTime), 1, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'7e1d6fb0-5ccb-465b-8484-0c01ad6e40a4', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-26T22:51:10.497' AS DateTime), 1, NULL, N'2177c075-a0b4-4df4-acf9-c539bc824ec2', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'7e2e7b7d-b425-4695-a8d4-af01891124be', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:34.047' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'80ee141d-8d7b-4e10-82ab-7a4e9b78718f', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:23:03.760' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'822378e8-f675-4af3-92c5-9c0f02805267', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-22T13:23:31.607' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'8271b241-75b0-408e-94fc-dc25261026a2', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-27T14:43:34.850' AS DateTime), 1, NULL, N'2177c075-a0b4-4df4-acf9-c539bc824ec2', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'86cac97c-571e-4cb6-bc4a-8f3556702940', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T11:26:54.670' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'874b327e-5011-40bf-b0de-fd4b2dc8b0d5', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:25.887' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'8a4778eb-52db-4385-8dbb-8e5f227a5626', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:35.610' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'8c887754-6b5c-426b-b13e-e9d3bae7839a', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:56.873' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'904ad5ef-426d-427a-92d0-381350063cd4', N'Đã có hóa đơn điện, nước. Thanh toán', CAST(N'2024-08-27T10:25:09.323' AS DateTime), 1, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'90c1d5a6-f32b-46e8-9fe4-6c08a4171305', N'Phòng của bạn đã thanh toán!', CAST(N'2024-09-01T00:42:19.857' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'943742c0-97e4-4e3a-8ce8-077b985779a4', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T13:56:15.040' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'950f5e72-da7e-4570-b9a3-7ad8f088d8a7', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-30T15:19:23.680' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'957584d6-176f-4095-9c26-81810ad50943', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-27T14:43:34.850' AS DateTime), 0, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'962f734f-1ccd-4751-b954-4c9f332b62e9', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-30T15:19:23.703' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'96bc4bad-fbfb-432d-9c76-a4221c1ac421', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-25T13:07:12.003' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'9a6aa9ac-dd2b-4cef-a78d-51f954f16417', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:37.573' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'9a836f1a-a0e2-49ee-96dc-7970e008745f', N'Hợp đồng của bạn đã được phê duyệt', CAST(N'2024-08-22T10:50:36.140' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a11deccf-bc83-40c7-8aab-b0cd610f56ca', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:47.543' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a2dd9c37-87c4-4d9c-9689-801697bd4734', N'Sự Cố: sdcwsa', CAST(N'2024-09-27T12:02:57.550' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["Software-Testing.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a3ce5553-bcd9-44af-a8c0-6c44468f3434', N'bbbbbbbb', CAST(N'2024-08-20T15:31:15.093' AS DateTime), 1, N'Bình Thường', N'd6096885-7976-43bb-ad25-d93d9420af7d', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a3ce8d43-bcd9-44af-a8c0-6c44468f3434', N'thử nghiệm', CAST(N'2024-08-20T15:31:15.093' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a3ce8d43-bcd9-44af-a8c0-6c6a968f3434', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-20T15:31:15.093' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a67e9af3-b362-4e93-bdb5-e95f25eb1eeb', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:27.823' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a8771735-ebb5-4458-aeee-2a3ca9da4b14', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-01T00:41:33.947' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a8ecdace-a841-4388-862f-b5d32fd38067', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T15:19:28.557' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a9066f44-e959-47d4-b287-85b37e8c0430', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-25T13:23:18.423' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a934a80e-c195-4245-ba48-5a73edb31a58', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-22T13:23:31.607' AS DateTime), 1, N'Bình Thường', N'2177c075-a0b4-4df4-acf9-c539bc824ec2', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'a9b47c6d-f497-495b-8569-622f90d0f196', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T10:38:12.927' AS DateTime), 0, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'aa05ee66-8e4b-41bd-9fe7-961962b4737e', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T09:18:19.667' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
GO
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'ad1ab4a0-1e69-4bbd-a33f-975f8a251e81', N'Phòng A106 bị hư 1 cái quạt trần. Mong ban quản lý sớm giải quyết!', CAST(N'2024-08-27T23:09:47.653' AS DateTime), 1, N'Sự cố', N'2177c075-a0b4-4df4-acf9-c539bc824ec2', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'add81664-d37e-4ecc-a622-5754ce8d7e06', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:23:10.760' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'ae37f73b-e748-43bd-83e3-c45fc823b385', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T11:45:17.560' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'b2801efc-1eb7-414a-b5df-306bff54e359', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-25T13:41:26.503' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'b43d220e-d73f-4dfe-bc1e-c4548ad0f2dc', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-08-27T13:49:52.300' AS DateTime), 0, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'b6293ace-8c0a-4b84-a100-b759ac8a736c', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-01T00:43:31.037' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'b72b67f9-c5dc-427c-9eb5-a3eac8a5b301', N'Sự Cố: ffff', CAST(N'2024-09-26T11:14:42.413' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["MB-NGUY\u1EC5N TH\u1ECB NG\u1ECDC QU\u00FD-0399836675.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'b7e64dba-96b4-4a4f-8392-a025776d99cb', N'Sự Cố: sac', CAST(N'2024-09-27T12:17:30.213' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["c03e05dcc8766c283567.jpg"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'b834854d-9aa1-4337-a671-83858a17ca6b', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T14:29:48.343' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'bf19f845-1b5e-48df-8a91-21113aa5a0e1', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:23:12.110' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'bfc78014-da79-4a8e-8567-f45d2dbe7a4e', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:28.047' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'bfefaa8c-bba7-47c0-8e72-1615f2e167c7', N'Sự Cố: cccccccccc', CAST(N'2024-08-29T08:29:13.540' AS DateTime), 1, N'Sự cố', N'2177c075-a0b4-4df4-acf9-c539bc824ec2', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'c1086e8e-535d-45d7-bc73-cc0779588a53', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:25.747' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'c112d820-9b9c-41b3-9feb-920c727226db', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:31.210' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'c15638b5-6413-4220-b3a4-709bf1d99d41', N'Sự Cố: huikho', CAST(N'2024-09-26T11:22:22.833' AS DateTime), 0, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["MB-NGUY\u1EC5N TH\u1ECB NG\u1ECDC QU\u00FD-0399836675.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'c2fc5b53-1f56-4c77-9ed1-f478bca38f6e', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T15:07:45.117' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'c4219b90-7cff-414e-85a4-84074d1e3547', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:31.750' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'c6d223f9-ba17-4473-bb25-4d386c7d3c87', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:16:09.323' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'c7c0710e-3390-42d0-b012-5feb0a1b0f48', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-26T22:51:48.867' AS DateTime), 1, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'c9757ef3-c981-4b93-b3bf-780e1f7ef5db', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:24:54.600' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'cae7573e-6163-4315-8781-e423ef47d7d4', N'Sự Cố: ưa', CAST(N'2024-09-26T16:09:02.923' AS DateTime), 0, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["MB-NGUY\u1EC5N TH\u1ECB NG\u1ECDC QU\u00FD-0399836675.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'caf234bd-f66d-444a-b32b-4defba79ef07', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T14:26:48.420' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'cbe720d5-59e5-49a6-95a5-8af6ef1f0417', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:16:02.520' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'cdc6fce1-bbce-4ab9-887a-4cc56792b575', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T11:36:00.853' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'cf63f2dc-c27a-4348-8220-4f34c2f9335d', N'Phòng của bạn đã thanh toán!', CAST(N'2024-09-02T22:40:41.013' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'd1077e2e-17db-4212-9fb9-181e31e0a10f', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-25T13:58:11.627' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'd11084c9-cc47-4c97-9c01-a4977adfbe8f', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-30T16:38:01.477' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'd275ea70-5c5d-47c7-9c20-b24e85b0dafd', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-10-03T10:43:42.277' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'd460ef21-149d-4824-9eef-f09e07863204', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:16:19.487' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'd60466b9-8d39-4e2d-aeb5-3e1185a43a77', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T10:08:08.703' AS DateTime), 0, N'Bình Thường', NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'd62d74ec-c7a6-4192-abab-0206df1f9a80', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T16:54:38.030' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'd748985b-9f30-494d-af51-36d738415052', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T15:12:46.220' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'd96030c9-8e85-4256-b9df-e71415772f95', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:28.040' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'd96333d5-10e8-45b7-a46f-f6536d46d033', N'Sự Cố: ngân hàng lỗi', CAST(N'2024-09-25T16:12:46.507' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'dcee8b64-865c-4309-8357-ac96fc765a9a', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T13:26:08.777' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'dd3f12fc-ab39-437c-90b7-379fbca8eee9', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T16:37:55.963' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'dd5e4590-aff0-4066-b894-36bae7d8b196', N'Sự Cố: hihih', CAST(N'2024-09-26T10:54:59.300' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["MB-NGUY\u1EC5N TH\u1ECB NG\u1ECDC QU\u00FD-0399836675.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'ded50e4d-dba5-43cc-80ef-3704a3b2bb3b', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-09-23T13:24:21.587' AS DateTime), 1, NULL, N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'e24c4999-fea9-49f0-986c-bdafa5e9b9ec', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-28T14:36:18.600' AS DateTime), 1, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'e43e04d6-a31a-467b-bd6d-cbf04f165534', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T13:50:20.787' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'e78349af-ad2a-43c9-b7fb-21964888b9cf', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-23T13:24:48.840' AS DateTime), 1, NULL, N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'e8cb6491-a02d-4574-9e68-99e1107390c6', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:41.923' AS DateTime), 0, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'e9019469-c94f-4441-95ba-353c3a87c62f', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:23:03.617' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'e9a3b5eb-34b4-4c60-b27e-635440f0d369', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-28T14:36:59.263' AS DateTime), 1, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'ef91ce4f-c970-4bb3-9918-9665edcd6101', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T10:42:25.700' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'f09be9a0-ab80-4bf5-b966-6862386a44c1', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:16:11.643' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'f4cc93ae-a6cd-4580-aea3-5f7648463358', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-09-02T22:15:44.853' AS DateTime), 0, NULL, NULL, NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'f6421ca0-4c94-45b5-9c96-2cabdf8b3a9c', N'Sự Cố: ngân hàng lỗi', CAST(N'2024-09-25T16:27:28.960' AS DateTime), 1, N'Sự cố', N'd6096885-7976-43bb-ad25-d93d9420af7d', N'["MB-NGUY\u1EC5N TH\u1ECB NG\u1ECDC QU\u00FD-0399836675.png"]')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'f6437ace-2233-4504-a66f-f908f77ea0f5', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:37.580' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'f65b3633-63de-428d-9c07-530d7a793af5', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T11:12:20.033' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'f6d2b2fd-2bc5-4a13-bfd4-21de557ffd24', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T11:57:11.383' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'f793d5b7-aebd-45cc-bb8b-52591e34109f', N'Phòng của bạn đã thanh toán!', CAST(N'2024-09-02T23:05:33.940' AS DateTime), 0, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'f914ef3a-f383-4f29-adf3-1f50bf841697', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T14:01:01.640' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'fbbedef3-2952-4e40-b1a0-5193bc4627cb', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-30T15:18:25.793' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'fdaee780-e083-4097-a5de-913ac4f6b543', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T14:12:47.757' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'fe53e9df-002c-48f1-a003-18e306de6465', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-23T15:40:29.407' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'ff1713d3-afd5-436b-87ff-bbc95776bac3', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-27T13:49:30.593' AS DateTime), 1, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e', NULL)
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser], [HinhAnh]) VALUES (N'ffd0fe66-7473-4aba-b0b2-49cd80236fc4', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-09-24T14:07:56.153' AS DateTime), 1, N'Bình Thường', N'20d2a37c-bcdf-4378-b22e-4be3dcba2521', NULL)
GO
INSERT [dbo].[YEUCAUDOITRAPHONG] ([MaYeuCau], [MaSinhVien], [MaPhongHienTai], [MaPhongMoi], [TrangThai], [NgayYeuCau], [LyDoDoiPhong], [LyDoTraPhong]) VALUES (N'480565df-5334-4aa4-b17a-5b8b2cc64545', N'21K4080043', N'ffaf7242-82b2-42e0-ae6c-610891f9a940', N'603f78bc-11a0-4339-b47c-8d91e8020936', N'Đang chờ duyệt', CAST(N'2024-10-10T09:14:21.300' AS DateTime), N'sdaxqsa', NULL)
INSERT [dbo].[YEUCAUDOITRAPHONG] ([MaYeuCau], [MaSinhVien], [MaPhongHienTai], [MaPhongMoi], [TrangThai], [NgayYeuCau], [LyDoDoiPhong], [LyDoTraPhong]) VALUES (N'4b37476c-6e00-4edf-b38c-bf7915ee1e59', N'21K4080043', N'ffaf7242-82b2-42e0-ae6c-610891f9a940', NULL, N'Đang chờ duyệt', CAST(N'2024-10-10T13:39:19.633' AS DateTime), NULL, N'fcwdx')
INSERT [dbo].[YEUCAUDOITRAPHONG] ([MaYeuCau], [MaSinhVien], [MaPhongHienTai], [MaPhongMoi], [TrangThai], [NgayYeuCau], [LyDoDoiPhong], [LyDoTraPhong]) VALUES (N'5a041b41-5ba9-4a78-aa00-97d7d549c097', N'21K4080043', N'ffaf7242-82b2-42e0-ae6c-610891f9a940', N'944dff45-b156-445f-9d6d-750e44d70de2', N'Đang chờ duyệt', CAST(N'2024-10-10T10:19:20.177' AS DateTime), N'szxsa', NULL)
GO
ALTER TABLE [dbo].[YEUCAUDOITRAPHONG] ADD  DEFAULT (N'Đang chờ') FOR [TrangThai]
GO
ALTER TABLE [dbo].[YEUCAUDOITRAPHONG] ADD  DEFAULT (getdate()) FOR [NgayYeuCau]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_DICHVU] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DICHVU] ([MaDV])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_DICHVU]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NHANVIEN] ([IDNhanVien])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_PHONG]
GO
ALTER TABLE [dbo].[HOPDONG]  WITH CHECK ADD  CONSTRAINT [FK_HOPDONG_NHANVIEN] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NHANVIEN] ([IDNhanVien])
GO
ALTER TABLE [dbo].[HOPDONG] CHECK CONSTRAINT [FK_HOPDONG_NHANVIEN]
GO
ALTER TABLE [dbo].[HOPDONG]  WITH CHECK ADD  CONSTRAINT [FK_HOPDONG_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[HOPDONG] CHECK CONSTRAINT [FK_HOPDONG_PHONG]
GO
ALTER TABLE [dbo].[HOPDONG]  WITH CHECK ADD  CONSTRAINT [FK_HOPDONG_SINHVIEN] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SINHVIEN] ([MSSV])
GO
ALTER TABLE [dbo].[HOPDONG] CHECK CONSTRAINT [FK_HOPDONG_SINHVIEN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TAIKHOAN] FOREIGN KEY([IDUser])
REFERENCES [dbo].[TAIKHOAN] ([IDUser])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHUHUYNH]  WITH CHECK ADD  CONSTRAINT [FK_PHUHUYNH_SINHVIEN] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SINHVIEN] ([MSSV])
GO
ALTER TABLE [dbo].[PHUHUYNH] CHECK CONSTRAINT [FK_PHUHUYNH_SINHVIEN]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINHVIEN_TAIKHOAN] FOREIGN KEY([IDUser])
REFERENCES [dbo].[TAIKHOAN] ([IDUser])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK_ThongBao_TAIKHOAN] FOREIGN KEY([IDUser])
REFERENCES [dbo].[TAIKHOAN] ([IDUser])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK_ThongBao_TAIKHOAN]
GO
ALTER TABLE [dbo].[YEUCAUDOITRAPHONG]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauDoiTraPhong_MaPhongHienTai] FOREIGN KEY([MaPhongHienTai])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[YEUCAUDOITRAPHONG] CHECK CONSTRAINT [FK_YeuCauDoiTraPhong_MaPhongHienTai]
GO
ALTER TABLE [dbo].[YEUCAUDOITRAPHONG]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauDoiTraPhong_MaPhongMoi] FOREIGN KEY([MaPhongMoi])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[YEUCAUDOITRAPHONG] CHECK CONSTRAINT [FK_YeuCauDoiTraPhong_MaPhongMoi]
GO
