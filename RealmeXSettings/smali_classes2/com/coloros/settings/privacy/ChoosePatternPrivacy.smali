.class public Lcom/coloros/settings/privacy/ChoosePatternPrivacy;
.super Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;
.source "ChoosePatternPrivacy.java"


# instance fields
.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/color/support/widget/ColorLockPatternView;

.field private n:Lcom/color/support/widget/ColorLockPatternView;

.field private o:Ljava/lang/Runnable;

.field private p:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->l:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$1;-><init>(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->o:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$2;-><init>(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->p:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Lcom/color/support/widget/ColorLockPatternView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1217
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1219
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1221
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 1222
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

    .line 1224
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->l:Ljava/util/List;

    return-object p1
.end method

.method private b()I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 151
    iget v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f120cae

    return v0

    :cond_0
    const v0, 0x7f1210dc

    return v0
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->l:Ljava/util/List;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/support/widget/ColorLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 9

    .line 156
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(ILjava/lang/String;)V

    .line 157
    iget p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    if-nez p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    const p2, 0x7f120fb7

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 160
    :cond_0
    iget p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 161
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    const v1, 0x7f120cdd

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    sget-object p2, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 164
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    .line 165
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->enableInput()V

    .line 166
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->c()V

    return-void

    .line 167
    :cond_1
    iget p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    const v1, 0x7f120c4f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    sget-object p2, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    .line 172
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->enableInput()V

    .line 173
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->c()V

    return-void

    .line 174
    :cond_2
    iget p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->g:Landroid/widget/TextView;

    const v1, 0x7f1210db

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    .line 178
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->j:Landroid/widget/TextView;

    const v1, 0x7f120cde

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->n:Lcom/color/support/widget/ColorLockPatternView;

    aput-object v2, v1, p2

    invoke-static {p1, v0, p2, v0, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 181
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x4

    new-array v8, v0, [Landroid/view/View;

    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->i:Landroid/widget/TextView;

    aput-object p1, v8, p2

    invoke-static/range {v3 .. v8}, Lcom/coloros/settings/utils/ag;->a(FZZZI[Landroid/view/View;)V

    .line 183
    new-array p1, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->j:Landroid/widget/TextView;

    aput-object v1, p1, p2

    invoke-static {p0, p2, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 185
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    aput-object v2, v1, p2

    invoke-static {p1, v0, v0, p2, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 187
    new-array p1, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->g:Landroid/widget/TextView;

    aput-object v1, p1, p2

    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    return-void

    .line 189
    :cond_3
    iget p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->d:I

    if-ne p1, v2, :cond_4

    .line 190
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    const v2, 0x7f120fba

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    .line 193
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array v2, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->n:Lcom/color/support/widget/ColorLockPatternView;

    aput-object v4, v2, p2

    iget-object v4, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->k:Landroid/widget/TextView;

    aput-object v4, v2, v0

    invoke-static {p1, p2, p2, v0, v2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 195
    new-array p1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->j:Landroid/widget/TextView;

    aput-object v2, p1, p2

    invoke-static {p0, p2, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 197
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array v2, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    aput-object v3, v2, p2

    iget-object v3, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->i:Landroid/widget/TextView;

    aput-object v3, v2, v1

    invoke-static {p1, p2, v0, p2, v2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 199
    new-array p1, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->g:Landroid/widget/TextView;

    aput-object v1, p1, p2

    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 113
    invoke-super {p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0d01e4

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a0446

    .line 117
    invoke-virtual {p0, p1, v1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(Landroid/view/View;I)V

    const p1, 0x7f0a05d7

    .line 118
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f1210fc

    .line 119
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a02eb

    .line 121
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->g:Landroid/widget/TextView;

    const p1, 0x7f0a02ec

    .line 122
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->j:Landroid/widget/TextView;

    const p1, 0x7f0a02e9

    .line 123
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->h:Landroid/widget/TextView;

    const p1, 0x7f0a02ea

    .line 124
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->k:Landroid/widget/TextView;

    const p1, 0x7f0a04a0

    .line 125
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->i:Landroid/widget/TextView;

    .line 126
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a03bc

    .line 128
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorLockPatternView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    const p1, 0x7f0a03bd

    .line 129
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorLockPatternView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->n:Lcom/color/support/widget/ColorLockPatternView;

    .line 130
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v2, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->p:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorLockPatternView;->setOnPatternListener(Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;)V

    .line 131
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->m:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 132
    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a03d7

    if-ne p1, v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
