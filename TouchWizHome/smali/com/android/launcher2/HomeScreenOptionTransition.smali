.class public Lcom/android/launcher2/HomeScreenOptionTransition;
.super Landroid/app/Activity;
.source "HomeScreenOptionTransition.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mImageView:Landroid/widget/ImageView;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mTransitionEffectPreviewEffect1:Landroid/graphics/drawable/Drawable;

.field mTransitionEffectPreviewEffect2:Landroid/graphics/drawable/Drawable;

.field mTransitionEffectPreviewNone:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    const v2, 0x7f030028

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    const v2, 0x7f080067

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/graphics/drawable/Drawable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f0e0049

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f0e004a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f0e004b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x109000f

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    sget v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v2, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/launcher2/HomeScreenOptionTransition;->setTransitionEffect(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setTransitionEffect(I)V
    .locals 5

    sget v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    if-ne p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "pref_list_transition_effect"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->setWhichTransitionEffect(I)V

    goto :goto_0
.end method
