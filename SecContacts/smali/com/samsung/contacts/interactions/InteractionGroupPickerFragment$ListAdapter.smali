.class final Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "InteractionGroupPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    const v0, 0x7f0300bd

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    const v8, 0x7f0b020c

    const v7, 0x7f080211

    const v6, 0x7f080031

    const/4 v4, 0x1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    # getter for: Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->access$000(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v4, 0x7f08003b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p3}, Lcom/samsung/contacts/util/GroupUtils;->getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4, v8}, Lcom/android/contacts/ContactsUtils;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4, v8}, Lcom/android/contacts/ContactsUtils;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method
