.class Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;
.super Ljava/lang/Object;
.source "CameraSharingDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceList"
.end annotation


# instance fields
.field private DeviceCheck:Z

.field private DeviceImage:Landroid/graphics/Bitmap;

.field private DeviceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->DeviceImage:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->DeviceName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->DeviceCheck:Z

    return-void
.end method


# virtual methods
.method public getDeviceCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->DeviceCheck:Z

    return v0
.end method

.method public getDeviceImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->DeviceImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;->DeviceName:Ljava/lang/String;

    return-object v0
.end method
