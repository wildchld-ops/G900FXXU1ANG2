.class Lcom/samsung/contacts/speeddial/SpeedDialListFragment$2;
.super Landroid/database/ContentObserver;
.source "SpeedDialListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->startQuery()V

    return-void
.end method