.class public Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;
.super Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;
.source "ConfirmNumberPrivacy.java"


# instance fields
.field private e:Lcom/color/support/widget/ColorSimpleLock;

.field private f:I

.field private g:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/color/support/widget/ColorNumericKeyboard;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->i:I

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)V
    .locals 5

    .line 1189
    iget v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->i:I

    .line 1190
    iget v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    if-ge v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setDeleteLast(Z)V

    .line 1192
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->g:[Ljava/lang/String;

    iget v2, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    add-int/lit8 v3, v2, -0x1

    const-string v4, ""

    aput-object v4, v0, v3

    sub-int/2addr v2, v1

    .line 1193
    iput v2, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    .line 1194
    iget v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1195
    iput v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)Lcom/color/support/widget/ColorSimpleLock;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)Lcom/color/support/widget/ColorNumericKeyboard;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->j:Lcom/color/support/widget/ColorNumericKeyboard;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)I
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const v0, 0x7f0a049a

    .line 48
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->a(I)V

    const v0, 0x7f0a02eb

    .line 50
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->a:Landroid/widget/TextView;

    const v0, 0x7f0a02e9

    .line 51
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->b:Landroid/widget/TextView;

    const v0, 0x7f0a02a0

    .line 52
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->c:Landroid/widget/TextView;

    const v0, 0x7f0a04c1

    .line 53
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSimpleLock;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->c()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    .line 55
    iget v1, v0, Lcom/coloros/settings/privacy/a/g$d;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    const/4 v0, 0x4

    .line 57
    iput v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->i:I

    goto :goto_0

    .line 58
    :cond_0
    iget v0, v0, Lcom/coloros/settings/privacy/a/g$d;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    const/4 v0, 0x6

    .line 60
    iput v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->i:I

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->finish()V

    .line 64
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initViews mPasswordLength: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmNumberPrivacy"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->i:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->g:[Ljava/lang/String;

    const v0, 0x7f0a0362

    .line 66
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->j:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->j:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->j:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->j:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, v0, Lcom/color/support/widget/ColorNumericKeyboard;->mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->j:Lcom/color/support/widget/ColorNumericKeyboard;

    new-instance v1, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$1;-><init>(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    return-void
.end method

.method protected final a(II)V
    .locals 2

    .line 107
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(II)V

    .line 108
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "confirmState : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConfirmNumberPrivacy"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->d:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->setEnabled(Z)V

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->j:Lcom/color/support/widget/ColorNumericKeyboard;

    if-eqz p1, :cond_3

    .line 112
    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    return-void

    .line 114
    :cond_0
    iget p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->d:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSimpleLock;->setEnabled(Z)V

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->j:Lcom/color/support/widget/ColorNumericKeyboard;

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    :cond_1
    const-string p1, "mFailedAnimatorRunnable run"

    .line 1130
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSimpleLock;->getFailedAnimator()Landroid/animation/Animator;

    move-result-object p1

    .line 1132
    new-instance p2, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$2;

    invoke-direct {p2, p0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy$2;-><init>(Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1159
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 120
    :cond_2
    iget p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->d:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 1183
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSimpleLock;->setClearAll(Z)V

    .line 1184
    iput v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSimpleLock;->setEnabled(Z)V

    .line 123
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->j:Lcom/color/support/widget/ColorNumericKeyboard;

    if-eqz p1, :cond_3

    .line 124
    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method protected final b()I
    .locals 1

    const v0, 0x7f0d0241

    return v0
.end method

.method public final b(I)V
    .locals 2

    .line 163
    iget v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    .line 165
    iget v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->i:I

    .line 166
    iget v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    if-gt v1, v0, :cond_2

    if-lez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorSimpleLock;->setOneCode(I)V

    .line 168
    iget v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->g:[Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    return-void

    .line 170
    :cond_0
    iget v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->f:I

    if-ne v1, v0, :cond_2

    .line 171
    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->g:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 173
    :goto_0
    iget v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->i:I

    if-ge v0, v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->g:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->h:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a03d7

    if-ne p1, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->e()V

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
