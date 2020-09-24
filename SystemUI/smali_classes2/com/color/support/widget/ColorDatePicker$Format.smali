.class Lcom/color/support/widget/ColorDatePicker$Format;
.super Ljava/lang/Object;
.source "ColorDatePicker.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Format"
.end annotation


# instance fields
.field mId:I

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/color/support/widget/ColorDatePicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorDatePicker;ILjava/lang/String;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/color/support/widget/ColorDatePicker$Format;->this$0:Lcom/color/support/widget/ColorDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput p2, p0, Lcom/color/support/widget/ColorDatePicker$Format;->mId:I

    .line 958
    iput-object p3, p0, Lcom/color/support/widget/ColorDatePicker$Format;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$Format;->mTag:Ljava/lang/String;

    const-string v1, "MONTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object p0, p0, Lcom/color/support/widget/ColorDatePicker$Format;->this$0:Lcom/color/support/widget/ColorDatePicker;

    invoke-static {p0}, Lcom/color/support/widget/ColorDatePicker;->access$1600(Lcom/color/support/widget/ColorDatePicker;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    .line 967
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$Format;->this$0:Lcom/color/support/widget/ColorDatePicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/color/support/widget/ColorDatePicker$Format;->mId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 969
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$Format;->this$0:Lcom/color/support/widget/ColorDatePicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/color/support/widget/ColorDatePicker$Format;->mId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
