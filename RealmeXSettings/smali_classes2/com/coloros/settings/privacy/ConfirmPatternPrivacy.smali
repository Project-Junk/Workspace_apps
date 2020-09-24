.class public Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;
.super Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;
.source "ConfirmPatternPrivacy.java"


# instance fields
.field private e:Lcom/color/support/widget/ColorLockPatternView;

.field private f:Ljava/lang/Runnable;

.field private g:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;-><init>()V

    .line 36
    new-instance v0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$1;-><init>(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->f:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy$2;-><init>(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->g:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)Lcom/color/support/widget/ColorLockPatternView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1162
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1163
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1165
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 1166
    invoke-virtual {v3}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getColumn()I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x31

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1168
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->h()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/support/widget/ColorLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const v0, 0x7f0a0191

    .line 78
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->a(I)V

    const v0, 0x7f0a02eb

    .line 80
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->a:Landroid/widget/TextView;

    const v0, 0x7f0a02e9

    .line 81
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->b:Landroid/widget/TextView;

    const v0, 0x7f0a02c0

    .line 82
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->c:Landroid/widget/TextView;

    const v0, 0x7f0a03bc

    .line 83
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorLockPatternView;

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->g:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setOnPatternListener(Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;)V

    return-void
.end method

.method protected final a(II)V
    .locals 1

    .line 140
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(II)V

    .line 141
    iget p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->d:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    .line 145
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->enableInput()V

    return-void

    .line 146
    :cond_0
    iget p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->d:I

    if-ne p1, p2, :cond_1

    .line 148
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 149
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    .line 150
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->enableInput()V

    .line 151
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->h()V

    return-void

    .line 152
    :cond_1
    iget p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->d:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 153
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    .line 154
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e:Lcom/color/support/widget/ColorLockPatternView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected final b()I
    .locals 1

    const v0, 0x7f0d011f

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a03d7

    if-ne p1, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->e()V

    .line 98
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
