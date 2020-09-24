.class public Lcom/coloros/settings/privacy/ChooseNumberPrivacy;
.super Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;
.source "ChooseNumberPrivacy.java"


# instance fields
.field private l:Lcom/color/support/widget/ColorSimpleLock;

.field private m:Lcom/color/support/widget/ColorSimpleLock;

.field private n:Lcom/color/support/widget/ColorNumericKeyboard;

.field private o:Landroid/view/View;

.field private p:I

.field private q:[Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChooseNumberPrivacy;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    return p0
.end method

.method private b()I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 158
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f120cae

    return v0

    :cond_0
    const v0, 0x7f1210d9

    return v0
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ChooseNumberPrivacy;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->s:I

    return p0
.end method

.method private c()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->l:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setClearAll(Z)V

    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/ChooseNumberPrivacy;)V
    .locals 5

    .line 1206
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    iget v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->s:I

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->l:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setDeleteLast(Z)V

    .line 1208
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->q:[Ljava/lang/String;

    iget v2, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    add-int/lit8 v3, v2, -0x1

    const-string v4, ""

    aput-object v4, v0, v3

    sub-int/2addr v2, v1

    .line 1209
    iput v2, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    .line 1210
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1211
    iput v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 4

    .line 129
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    .line 130
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    iget v2, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->s:I

    if-gt v0, v2, :cond_7

    if-lez v0, :cond_7

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->l:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSimpleLock;->setOneCode(I)V

    .line 132
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->q:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    return-void

    :cond_0
    if-le v0, v1, :cond_1

    .line 134
    iget v3, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->s:I

    if-ge v0, v3, :cond_1

    .line 135
    iget-object v2, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->q:[Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    return-void

    .line 136
    :cond_1
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->p:I

    iget v3, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->s:I

    if-ne v0, v3, :cond_7

    .line 137
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->q:[Ljava/lang/String;

    sub-int/2addr v3, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    :goto_0
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->s:I

    if-ge v2, v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->q:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_2
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->d:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 144
    :cond_3
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->r:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 146
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->r:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->a(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->a(Ljava/lang/String;)V

    .line 151
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->r:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 10

    .line 163
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(ILjava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->c()V

    .line 165
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->d:I

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 167
    :cond_0
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->d:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 168
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->h:Landroid/widget/TextView;

    const p2, 0x7f120c4d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 170
    :cond_1
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->d:I

    const v1, 0x7f1210d8

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->j:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    new-array p1, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->j:Landroid/widget/TextView;

    aput-object v1, p1, v0

    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 174
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    new-array v9, v3, [Landroid/view/View;

    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->i:Landroid/widget/TextView;

    aput-object p1, v9, v0

    invoke-static/range {v4 .. v9}, Lcom/coloros/settings/utils/ag;->a(FZZZI[Landroid/view/View;)V

    .line 176
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 177
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array p2, p2, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->m:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v1, p2, v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->h:Landroid/widget/TextView;

    aput-object v1, p2, v3

    invoke-static {p1, v3, v0, v3, p2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array p2, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->m:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v1, p2, v0

    invoke-static {p1, v3, v0, v3, p2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 183
    :goto_0
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array p2, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->l:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v1, p2, v0

    invoke-static {p1, v3, v3, v0, p2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 185
    new-array p1, v3, [Landroid/view/View;

    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->g:Landroid/widget/TextView;

    aput-object p2, p1, v0

    invoke-static {p0, v3, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    return-void

    .line 187
    :cond_3
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->d:I

    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    .line 188
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->b()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->h:Landroid/widget/TextView;

    const v4, 0x7f120faa

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array v1, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->m:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v4, v1, v0

    invoke-static {p1, v0, v0, v3, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 193
    new-array p1, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->j:Landroid/widget/TextView;

    aput-object v1, p1, v0

    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 194
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p1

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->l:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->h:Landroid/widget/TextView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->i:Landroid/widget/TextView;

    aput-object v2, v1, p2

    invoke-static {p1, v0, v3, v0, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 196
    new-array p1, v3, [Landroid/view/View;

    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->g:Landroid/widget/TextView;

    aput-object p2, p1, v0

    invoke-static {p0, v3, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 105
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    sget v1, Lcom/color/zoomwindow/ColorZoomWindowManager;->WINDOWING_MODE_ZOOM:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 48
    invoke-super {p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0d021e

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->o:Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    sget v1, Lcom/color/zoomwindow/ColorZoomWindowManager;->WINDOWING_MODE_ZOOM:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->o:Landroid/view/View;

    xor-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->o:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->setContentView(Landroid/view/View;)V

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->o:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 54
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->o:Landroid/view/View;

    const v1, 0x7f0a0494

    invoke-virtual {p0, p1, v1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->a(Landroid/view/View;I)V

    const p1, 0x7f0a05d7

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f1210fc

    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a02f4

    .line 58
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->g:Landroid/widget/TextView;

    const p1, 0x7f0a02f5

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->j:Landroid/widget/TextView;

    const p1, 0x7f0a02f2

    .line 60
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->h:Landroid/widget/TextView;

    const p1, 0x7f0a02f3

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->k:Landroid/widget/TextView;

    const p1, 0x7f0a04a0

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->i:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04c1

    .line 65
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSimpleLock;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->l:Lcom/color/support/widget/ColorSimpleLock;

    const p1, 0x7f0a04c2

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSimpleLock;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->m:Lcom/color/support/widget/ColorSimpleLock;

    const p1, 0x7f0a0362

    .line 67
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->n:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 68
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->c:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x6

    .line 69
    iput p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->s:I

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->l:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    goto :goto_1

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->l:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p1, v3}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    const/4 p1, 0x4

    .line 73
    iput p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->s:I

    .line 75
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->n:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 76
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->n:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, p1, Lcom/color/support/widget/ColorNumericKeyboard;->mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    .line 77
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->n:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->n:Lcom/color/support/widget/ColorNumericKeyboard;

    new-instance v1, Lcom/coloros/settings/privacy/ChooseNumberPrivacy$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy$1;-><init>(Lcom/coloros/settings/privacy/ChooseNumberPrivacy;)V

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    .line 96
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->s:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->q:[Ljava/lang/String;

    .line 98
    invoke-virtual {p0, v3, v0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a03d7

    if-ne p1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
