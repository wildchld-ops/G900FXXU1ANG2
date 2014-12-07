.class public Lcom/google/android/finsky/layout/HistogramTable;
.super Landroid/widget/TableLayout;
.source "HistogramTable.java"


# instance fields
.field private mLabels:[Ljava/lang/String;

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/HistogramTable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x5

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/finsky/layout/HistogramTable;->mLabels:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/HistogramTable;->mLabels:[Ljava/lang/String;

    aget v5, v2, v1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/vending/R$styleable;->MaxWidthView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/layout/HistogramTable;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0901ab
        0x7f0901ac
        0x7f0901ad
        0x7f0901ae
        0x7f0901af
    .end array-data
.end method


# virtual methods
.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/HistogramTable;->mMaxWidth:I

    return v0
.end method

.method public setHistogram([I)V
    .locals 12

    const/4 v11, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramTable;->removeAllViews()V

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v11, :cond_1

    aget v9, p1, v3

    int-to-double v9, v9

    cmpl-double v9, v9, v5

    if-lez v9, :cond_0

    aget v9, p1, v3

    int-to-double v5, v9

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramTable;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_2

    const v9, 0x7f040082

    const/4 v10, 0x0

    invoke-virtual {v4, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableRow;

    const v9, 0x7f08014d

    invoke-virtual {v8, v9}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/finsky/layout/HistogramTable;->mLabels:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f08014f

    invoke-virtual {v8, v9}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aget v9, p1, v3

    int-to-long v9, v9

    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f08014e

    invoke-virtual {v8, v9}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HistogramBar;

    aget v9, p1, v3

    int-to-double v9, v9

    div-double/2addr v9, v5

    invoke-virtual {v0, v9, v10}, Lcom/google/android/finsky/layout/HistogramBar;->setWidthPercentage(D)V

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/HistogramTable;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
