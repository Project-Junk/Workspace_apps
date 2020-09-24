.class public Lcom/color/support/widget/ColorNumericKeyboard$Cell;
.super Ljava/lang/Object;
.source "ColorNumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cell"
.end annotation


# instance fields
.field cellLettersStr:Ljava/lang/String;

.field cellNumberStr:Ljava/lang/String;

.field column:I

.field row:I

.field final synthetic this$0:Lcom/color/support/widget/ColorNumericKeyboard;


# direct methods
.method private constructor <init>(Lcom/color/support/widget/ColorNumericKeyboard;II)V
    .locals 1

    .line 211
    iput-object p1, p0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->this$0:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 208
    iput-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->cellNumberStr:Ljava/lang/String;

    .line 209
    iput-object v0, p0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->cellLettersStr:Ljava/lang/String;

    .line 212
    invoke-static {p1, p2, p3}, Lcom/color/support/widget/ColorNumericKeyboard;->access$100(Lcom/color/support/widget/ColorNumericKeyboard;II)V

    .line 213
    iput p2, p0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->row:I

    .line 214
    iput p3, p0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->column:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/widget/ColorNumericKeyboard;IILcom/color/support/widget/ColorNumericKeyboard$1;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorNumericKeyboard$Cell;-><init>(Lcom/color/support/widget/ColorNumericKeyboard;II)V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->column:I

    return p0
.end method

.method public getRow()I
    .locals 0

    .line 222
    iget p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->row:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "row "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/color/support/widget/ColorNumericKeyboard$Cell;->column:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
