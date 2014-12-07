.class Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;
.super Lcom/google/android/finsky/previews/SongSnippetStatusListener;
.source "FreeSongOfTheDaySummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    invoke-direct {p0}, Lcom/google/android/finsky/previews/SongSnippetStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected update(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    # getter for: Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;
    invoke-static {v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->access$100(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Lcom/google/android/finsky/layout/SongIndex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    # invokes: Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setHighlighted(Z)V
    invoke-static {v0, p2}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->access$200(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Z)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    # getter for: Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mPlaybackLegend:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->access$300(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    # getter for: Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mPlaybackLegend:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->access$300(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090341

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;->this$0:Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    # getter for: Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mPlaybackLegend:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->access$300(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090340

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
