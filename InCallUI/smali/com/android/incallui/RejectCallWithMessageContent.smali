.class public Lcom/android/incallui/RejectCallWithMessageContent;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;,
        Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;,
        Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;,
        Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;
    }
.end annotation


# instance fields
.field private RingingCallnumber:Ljava/lang/String;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCreageMessageIcon:Landroid/widget/ImageView;

.field private mCreageMessageText:Landroid/widget/TextView;

.field private mCreateMessage:Landroid/widget/LinearLayout;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;

.field protected mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;

.field private mRejectCallWithMessageItemList:Landroid/widget/ListView;

.field private mTextResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040058

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/RejectCallWithMessageContent;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/incallui/RejectCallWithMessageContent;

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureRejectCallWithMessageSlidingDrawer : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;

    iget-object v7, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    const v8, 0x7f04005b

    invoke-direct {v4, p0, v7, v8, p1}, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    new-instance v7, Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;

    invoke-direct {v7, p0}, Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;)V

    invoke-virtual {v4, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f08020d

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    const v4, 0x7f08020c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "Incoming call is not exist"

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    const v7, -0x777778

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    const v7, 0x7f0202f2

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_d

    move v1, v5

    :cond_7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasActiveCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAllSoundOff "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_8

    if-eqz v2, :cond_e

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09003f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    const v7, 0x7f0202f1

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_d
    move v1, v6

    goto :goto_2

    :cond_e
    iget-object v4, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    const v5, 0x7f08020b

    const v4, 0x7f080209

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    const v0, 0x7f08020a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoImg:Landroid/widget/ImageView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setNextFocusDownId(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectCallWithMessageContent$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectCallWithMessageContent$1;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f08020e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectCallWithMessageContent$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectCallWithMessageContent$2;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->checkMUMCaseForIncoming()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1    # I

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;)V
    .locals 0
    .param p1    # Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;)V
    .locals 0
    .param p1    # Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;

    return-void
.end method
