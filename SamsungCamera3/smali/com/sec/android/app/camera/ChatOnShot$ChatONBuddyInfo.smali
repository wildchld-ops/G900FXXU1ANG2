.class public Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;
.super Ljava/lang/Object;
.source "ChatOnShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ChatOnShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatONBuddyInfo"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSelected:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/ChatOnShot;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ChatOnShot;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->this$0:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mSelected:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mSelected:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->mSelected:Z

    return-void
.end method
