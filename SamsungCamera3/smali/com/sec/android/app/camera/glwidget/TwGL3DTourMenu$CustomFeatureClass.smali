.class public Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;
.super Ljava/lang/Object;
.source "TwGL3DTourMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomFeatureClass"
.end annotation


# instance fields
.field private m_FileIndex:I

.field private m_FileName:Ljava/lang/String;

.field private m_s32State:I

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;ILjava/lang/String;I)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileIndex:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileIndex:I

    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_s32State:I

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$CustomFeatureClass;->m_FileName:Ljava/lang/String;

    return-object v0
.end method
