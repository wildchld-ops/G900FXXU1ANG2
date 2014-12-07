.class Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;
.super Ljava/util/ArrayList;
.source "NowPlayingWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/finsky/widget/consumption/Block;",
        ">;>;"
    }
.end annotation


# instance fields
.field final heightRemaining:I

.field final showBackground:Z

.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;>;ZI)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-boolean p3, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;->showBackground:Z

    iput p4, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;->heightRemaining:I

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
