.class Lcom/color/support/widget/ColorTimePicker$Format;
.super Ljava/lang/Object;
.source "ColorTimePicker.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Format"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorTimePicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorTimePicker;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/color/support/widget/ColorTimePicker$Format;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker$Format;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorTimePicker;->access$700(Lcom/color/support/widget/ColorTimePicker;I)Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/color/support/widget/ColorTimePicker$Format;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorTimePicker;->access$800(Lcom/color/support/widget/ColorTimePicker;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aput-object v0, v1, v2

    .line 399
    iget-object v1, p0, Lcom/color/support/widget/ColorTimePicker$Format;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorTimePicker;->access$900(Lcom/color/support/widget/ColorTimePicker;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 400
    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker$Format;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorTimePicker;->access$1000(Lcom/color/support/widget/ColorTimePicker;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 401
    iget-object p1, p0, Lcom/color/support/widget/ColorTimePicker$Format;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p1}, Lcom/color/support/widget/ColorTimePicker;->access$900(Lcom/color/support/widget/ColorTimePicker;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/ColorTimePicker$Format;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorTimePicker;->access$1100(Lcom/color/support/widget/ColorTimePicker;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 402
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker$Format;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p0}, Lcom/color/support/widget/ColorTimePicker;->access$900(Lcom/color/support/widget/ColorTimePicker;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    return-object p0

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorTimePicker$Format;->this$0:Lcom/color/support/widget/ColorTimePicker;

    invoke-static {p0}, Lcom/color/support/widget/ColorTimePicker;->access$900(Lcom/color/support/widget/ColorTimePicker;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 407
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 408
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    if-nez v4, :cond_2

    .line 409
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v4, :cond_3

    .line 411
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    move v4, v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
