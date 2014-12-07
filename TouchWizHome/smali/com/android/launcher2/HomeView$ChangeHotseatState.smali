.class Lcom/android/launcher2/HomeView$ChangeHotseatState;
.super Ljava/lang/Object;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeHotseatState"
.end annotation


# instance fields
.field public mNewPage:Landroid/view/View;

.field public mNewPageIndex:I

.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/HomeView;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$ChangeHotseatState;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/HomeView$ChangeHotseatState;->mNewPage:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher2/HomeView$ChangeHotseatState;->mNewPageIndex:I

    return-void
.end method
