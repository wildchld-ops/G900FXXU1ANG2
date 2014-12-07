.class Lcom/android/settings/GridSettings$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings$ViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/GridSettings$ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings$ViewPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;->this$1:Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;->this$1:Lcom/android/settings/GridSettings$ViewPagerAdapter;

    iget-object v0, v0, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/GridSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
