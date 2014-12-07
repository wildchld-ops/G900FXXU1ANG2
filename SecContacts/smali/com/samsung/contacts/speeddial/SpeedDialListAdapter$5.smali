.class Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$5;
.super Ljava/lang/Object;
.source "SpeedDialListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$5;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$5;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e03db

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
