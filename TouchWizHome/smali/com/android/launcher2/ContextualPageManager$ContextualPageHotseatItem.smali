.class public Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ContextualPageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextualPageHotseatItem"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public cpType:I

.field public packageName:Ljava/lang/String;

.field public screen:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iput p3, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->screen:I

    iput p4, p0, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->cpType:I

    return-void
.end method
