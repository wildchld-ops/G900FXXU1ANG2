.class Lcom/android/contacts/datepicker/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$1;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .param p1    # Landroid/widget/NumberPicker;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$1;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iput p3, v0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$1;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method
