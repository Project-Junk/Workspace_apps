.class public Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/os/storage/StorageManager;

.field private l:I

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private final p:Landroid/os/storage/StorageEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "MediaFormat"

    .line 56
    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->h:Z

    .line 70
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->i:Z

    .line 73
    iput v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->l:I

    .line 79
    new-instance v0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$1;-><init>(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->m:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$2;-><init>(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->n:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$3;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$3;-><init>(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->o:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$4;-><init>(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->p:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->l:I

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 108
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->setResult(I)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->finish()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01bc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->e:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->e:Landroid/view/View;

    const v1, 0x7f0a027a

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->f:Landroid/widget/Button;

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->e:Landroid/view/View;

    const v1, 0x7f0a0294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->g:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->f:Landroid/widget/Button;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "SD_TYPE"

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f120f6b

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v0, 0x7f120927

    .line 189
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->setTitle(I)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->j:Z

    return v0
.end method

.method private c()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c:Landroid/view/View;

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c:Landroid/view/View;

    const v1, 0x7f0a032f

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->d:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SD_TYPE"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c:Landroid/view/View;

    const v1, 0x7f0a02c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f120f6a

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->d:Landroid/widget/Button;

    const v1, 0x7f120f69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f120927

    .line 225
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->setTitle(I)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a()V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z
    .locals 3

    .line 1118
    new-instance v0, Lcom/coloros/settings/feature/password/a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f120d49

    .line 1120
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f120d48

    .line 1121
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1119
    invoke-virtual {v0, v1, p0}, Lcom/coloros/settings/feature/password/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->b()V

    return-void
.end method

.method static synthetic g(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->l:I

    return p0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/widget/Button;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->f:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->n:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->i:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->b()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->finish()V

    return-void

    .line 139
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->f:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 294
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "format_init_back_settings"

    goto :goto_0

    :cond_0
    const-string v0, "format_init_back_others"

    :goto_0
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 297
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->h:Z

    if-eqz v0, :cond_2

    const-string v0, "format_final_back_settings"

    goto :goto_1

    :cond_2
    const-string v0, "format_final_back_others"

    :goto_1
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    :goto_2
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->i:Z

    if-nez v0, :cond_3

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 240
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ai(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x2001

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c:Landroid/view/View;

    .line 248
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->e:Landroid/view/View;

    .line 249
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->b:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->j:Z

    .line 252
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c()V

    .line 253
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "start_from_settings"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->h:Z

    .line 254
    iget-boolean p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->h:Z

    if-eqz p1, :cond_1

    const-string p1, "format_form_settings"

    goto :goto_0

    :cond_1
    const-string p1, "format_form_others"

    :goto_0
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->k:Landroid/os/storage/StorageManager;

    .line 257
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->k:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->p:Landroid/os/storage/StorageEventListener;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 277
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->k:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->p:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 287
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 269
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->j:Z

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c()V

    :cond_0
    return-void
.end method
