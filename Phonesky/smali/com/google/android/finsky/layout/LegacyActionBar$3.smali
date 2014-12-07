.class Lcom/google/android/finsky/layout/LegacyActionBar$3;
.super Ljava/lang/Object;
.source "LegacyActionBar.java"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/LegacyActionBar;->getSideDrawerDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/LegacyActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mChevronUpDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$600(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarDescription(I)V
    .locals 2

    if-nez p1, :cond_0

    const p1, 0x7f090356

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$500(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$400(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_0

    const p2, 0x7f090356

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$500(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$3;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
