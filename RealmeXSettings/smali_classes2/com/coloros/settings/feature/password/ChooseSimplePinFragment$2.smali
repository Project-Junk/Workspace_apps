.class final Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$2;
.super Ljava/lang/Object;
.source "ChooseSimplePinFragment.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickLeft()V
    .locals 0

    return-void
.end method

.method public final onClickNumber(I)V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 172
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    .line 1446
    iget v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    .line 1447
    iget v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    iget v3, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    if-gt v1, v3, :cond_4

    iget v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    if-lez v1, :cond_4

    .line 1448
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorSimpleLock;->setOneCode(I)V

    .line 1450
    iget v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 1451
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1452
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1454
    :cond_0
    iget-object v0, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->d:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    return-void

    .line 1455
    :cond_1
    iget v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    if-le v1, v2, :cond_2

    iget v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    iget v4, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    if-ge v1, v4, :cond_2

    .line 1456
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->d:[Ljava/lang/String;

    iget v0, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    sub-int/2addr v0, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    return-void

    .line 1457
    :cond_2
    iget v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    iget v4, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    if-ne v1, v4, :cond_4

    .line 1458
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->d:[Ljava/lang/String;

    iget v4, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    sub-int/2addr v4, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 1459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1460
    :goto_0
    iget v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    if-ge v3, v1, :cond_3

    .line 1461
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1463
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e:Ljava/lang/String;

    .line 1464
    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a()V

    :cond_4
    return-void
.end method

.method public final onClickRight()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->d(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    return-void
.end method
