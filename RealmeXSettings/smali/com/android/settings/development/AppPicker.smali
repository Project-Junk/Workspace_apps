.class public Lcom/android/settings/development/AppPicker;
.super Lcom/coloros/settings/SettingsAppCompatListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/AppPicker$a;,
        Lcom/android/settings/development/AppPicker$b;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/development/AppPicker$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/android/settings/development/AppPicker$a;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/android/settings/development/AppPicker$1;

    invoke-direct {v0}, Lcom/android/settings/development/AppPicker$1;-><init>()V

    sput-object v0, Lcom/android/settings/development/AppPicker;->g:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/SettingsAppCompatListActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/Comparator;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/settings/development/AppPicker;->g:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/development/AppPicker;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/settings/development/AppPicker;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/android/settings/development/AppPicker;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/settings/development/AppPicker;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/android/settings/development/AppPicker;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/development/AppPicker;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/e;
    .locals 1

    if-nez p2, :cond_0

    const p2, 0x7f0d024e

    const/4 v0, 0x0

    .line 1038
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1042
    new-instance p2, Lcom/android/settings/development/e;

    invoke-direct {p2}, Lcom/android/settings/development/e;-><init>()V

    .line 1043
    iput-object p1, p2, Lcom/android/settings/development/e;->a:Landroid/view/View;

    const v0, 0x1020016

    .line 1044
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/settings/development/e;->b:Landroid/widget/TextView;

    const v0, 0x1020006

    .line 1045
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/android/settings/development/e;->c:Landroid/widget/ImageView;

    const v0, 0x1020010

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/settings/development/e;->d:Landroid/widget/TextView;

    const v0, 0x7f0a00b1

    .line 1047
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/settings/development/e;->e:Landroid/widget/TextView;

    .line 1048
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    .line 1053
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/e;

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/development/AppPicker;->c:Lcom/android/settings/development/AppPicker$a;

    invoke-virtual {v0, p1}, Lcom/android/settings/development/AppPicker$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/AppPicker$b;

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    iget-object v1, p1, Lcom/android/settings/development/AppPicker$b;->a:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/android/settings/development/AppPicker$b;->a:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, -0x1

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/development/AppPicker;->setResult(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsAppCompatListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.extra.REQUESTIING_PERMISSION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AppPicker;->d:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "com.android.settings.extra.DEBUGGABLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/development/AppPicker;->e:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.extra.NON_SYSTEM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/development/AppPicker;->f:Z

    .line 65
    new-instance p1, Lcom/android/settings/development/AppPicker$a;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/development/AppPicker$a;-><init>(Lcom/android/settings/development/AppPicker;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/AppPicker;->c:Lcom/android/settings/development/AppPicker$a;

    .line 66
    iget-object p1, p0, Lcom/android/settings/development/AppPicker;->c:Lcom/android/settings/development/AppPicker$a;

    invoke-virtual {p1}, Lcom/android/settings/development/AppPicker$a;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/development/AppPicker;->finish()V

    return-void

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/AppPicker;->c:Lcom/android/settings/development/AppPicker$a;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AppPicker;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/coloros/settings/SettingsAppCompatListActivity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 80
    invoke-super {p0}, Lcom/coloros/settings/SettingsAppCompatListActivity;->onStop()V

    return-void
.end method
