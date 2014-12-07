.class Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    # invokes: Lcom/android/contacts/common/list/ContactTileAdapter;->getLayoutResourceId(I)I
    invoke-static {p1, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$000(Lcom/android/contacts/common/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setImportantForAccessibility(I)V

    return-void
.end method

.method private addTileFromEntry(Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;IZZ)V
    .locals 11

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v7

    if-gt v7, p2, :cond_2

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactTileView;

    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const v7, 0x7f08014d

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    :cond_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/ContactTileView;->setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$200(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/ContactTileView;->setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    :goto_0
    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    iget-object v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mSelectionMode:Z
    invoke-static {v8}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)Z

    move-result v8

    invoke-virtual {v2, p1, v7, v8}, Lcom/android/contacts/common/list/ContactTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;IZ)V

    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setEnabled(Z)V

    :cond_1
    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v7, :pswitch_data_0

    :goto_1
    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    if-nez v7, :cond_7

    sget-boolean v7, Lcom/android/contacts/common/list/ContactTileView;->mIsSingleLine:Z

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b01d6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mSelectionMode:Z
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->showGridCheckBox()V

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->showListCheckBox()V

    :goto_3
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mSelectionMode:Z
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/common/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_a

    :goto_4
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactTileView;

    goto :goto_0

    :pswitch_0
    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v10

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v7, v7, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    add-int/lit8 v7, v7, -0x1

    if-lt p2, v7, :cond_4

    const/4 v7, 0x0

    move v8, v7

    :goto_5
    if-nez p3, :cond_3

    if-nez p4, :cond_5

    :cond_3
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v2, v9, v10, v8, v7}, Lcom/android/contacts/common/list/ContactTileView;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v7

    move v8, v7

    goto :goto_5

    :cond_5
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v7

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b01d7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$500(Lcom/android/contacts/common/list/ContactTileAdapter;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "huge_font"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    const v9, 0x7f100068

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00a1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->getNameView()Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b01d8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->hideGridCheckBox()V

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->hideListCheckBox()V

    goto/16 :goto_3

    :cond_a
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v7, v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->getContactId(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$600(Lcom/android/contacts/common/list/ContactTileAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/ContactTileView;->setItemSelected(Z)V

    :cond_b
    :goto_7
    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileView;->getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_c
    if-eqz p4, :cond_f

    if-nez p3, :cond_f

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto/16 :goto_4

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/ContactTileView;->setItemSelected(Z)V

    goto :goto_7

    :cond_e
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/ContactTileView;->setItemSelected(Z)V

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/contacts/common/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onLayoutForTiles()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v6, v2, v3

    invoke-virtual {v0, v2, v7, v6, v1}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v2, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMeasureForTiles(I)V
    .locals 13

    const/high16 v12, 0x40000000

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v8, v10}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v9, v9, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    add-int/lit8 v9, v9, -0x1

    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v11}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v11

    mul-int v7, v9, v11

    sub-int v9, v8, v7

    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v11, v11, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    div-int v5, v9, v11

    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v9, v9, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int/2addr v9, v5

    sub-int v9, v8, v9

    sub-int v6, v9, v7

    iget-object v9, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v9}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v9

    add-int v2, v5, v9

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int v11, v5, v9

    if-ge v4, v6, :cond_1

    const/4 v9, 0x1

    :goto_2
    add-int v3, v11, v9

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v9, v11}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v9, v10

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v8, v2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    goto :goto_0
.end method


# virtual methods
.method public configureRow(Ljava/util/ArrayList;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;",
            ">;ZZ)V"
        }
    .end annotation

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-object v2, v3

    :goto_2
    invoke-direct {p0, v2, v1, p2, p3}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v0, v3, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
