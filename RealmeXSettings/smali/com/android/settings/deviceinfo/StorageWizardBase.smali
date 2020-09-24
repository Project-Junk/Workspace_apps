.class public abstract Lcom/android/settings/deviceinfo/StorageWizardBase;
.super Landroidx/fragment/app/FragmentActivity;
.source "StorageWizardBase.java"


# instance fields
.field protected a:Landroid/os/storage/StorageManager;

.field protected b:Landroid/os/storage/VolumeInfo;

.field protected c:Landroid/os/storage/DiskInfo;

.field private d:Lcom/google/android/setupcompat/template/a;

.field private e:Lcom/google/android/setupcompat/template/FooterButton;

.field private f:Lcom/google/android/setupcompat/template/FooterButton;

.field private final g:Landroid/os/storage/StorageEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 289
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->g:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private static a(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 219
    invoke-virtual {p0, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 225
    invoke-virtual {p0, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    const v0, 0x7f0a05f8

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    return-object v0
.end method

.method protected final a(I)V
    .locals 6

    const v0, 0x7f0a0661

    .line 5147
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 151
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0a0662

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final varargs a(I[Ljava/lang/CharSequence;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->a()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final b()V
    .locals 5

    const v0, 0x7f0a065c

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 170
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d02ef

    .line 171
    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x7f0a0660

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1215d8

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->g()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    .line 176
    invoke-static {v1, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final b(I)V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->a()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 202
    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/l;->o(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 203
    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected final varargs b(I[Ljava/lang/CharSequence;)V
    .locals 1

    const v0, 0x7f0a065d

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected final c(I)Landroid/os/storage/VolumeInfo;
    .locals 4

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 253
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->c:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 254
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing mounted volume of type 1 hosted by disk "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->c:Landroid/os/storage/DiskInfo;

    .line 261
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; trying again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageSettings"

    .line 260
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xfa

    .line 262
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final c()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->e:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    return-void
.end method

.method protected final varargs c(I[Ljava/lang/CharSequence;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->e:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->e:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    return-void
.end method

.method protected final d()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->f:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    return-void
.end method

.method protected final varargs d(I[Ljava/lang/CharSequence;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->f:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->f:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    return-void
.end method

.method protected final e()Landroid/os/storage/VolumeInfo;
    .locals 1

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->c(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/CharSequence;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->c:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->b:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f121757

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Ljava/lang/CharSequence;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->c:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->b:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f121757

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f130249

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->a:Landroid/os/storage/StorageManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->b:Landroid/os/storage/VolumeInfo;

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->c:Landroid/os/storage/DiskInfo;

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->b:Landroid/os/storage/VolumeInfo;

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->c:Landroid/os/storage/DiskInfo;

    .line 90
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->c:Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->a:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->g:Landroid/os/storage/StorageEventListener;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->a:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->g:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 0

    .line 211
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 0

    .line 215
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setContentView(I)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->a()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->d:Lcom/google/android/setupcompat/template/a;

    .line 100
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->d:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121a90

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/-$$Lambda$fM0gCSTTN1T2Je2_NvbxAeyKcxM;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/-$$Lambda$fM0gCSTTN1T2Je2_NvbxAeyKcxM;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    .line 1347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    .line 1353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027f

    .line 1359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 106
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->d:Lcom/google/android/setupcompat/template/a;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121a93

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/-$$Lambda$zFPWNnsTxDJLy-tWHRumtDh9D8g;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/-$$Lambda$zFPWNnsTxDJLy-tWHRumtDh9D8g;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    .line 2347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    .line 2353
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v1, 0x7f13027e

    .line 2359
    iput v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 114
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->d:Lcom/google/android/setupcompat/template/a;

    .line 3350
    iget-object p1, p1, Lcom/google/android/setupcompat/template/a;->c:Lcom/google/android/setupcompat/template/FooterButton;

    .line 116
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->e:Lcom/google/android/setupcompat/template/FooterButton;

    .line 117
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->d:Lcom/google/android/setupcompat/template/a;

    .line 4273
    iget-object p1, p1, Lcom/google/android/setupcompat/template/a;->b:Lcom/google/android/setupcompat/template/FooterButton;

    .line 117
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->f:Lcom/google/android/setupcompat/template/FooterButton;

    const-string p1, "com.android.internal.R.drawable.ic_sd_card_48dp"

    .line 119
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->b(I)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.os.storage.extra.DISK_ID"

    .line 235
    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->a(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    .line 236
    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->a(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "format_forget_uuid"

    .line 237
    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->a(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "format_private"

    .line 238
    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->b(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "format_slow"

    .line 239
    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->b(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "migrate_skip"

    .line 240
    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->b(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    .line 242
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
