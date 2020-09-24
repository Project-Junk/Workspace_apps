.class public Lcom/android/settings/applications/ConvertToFbe;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ConvertToFbe.java"


# instance fields
.field private a:Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 87
    new-instance v0, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/applications/ConfirmConvertToFbe;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f12063b

    .line 1063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 2043
    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2044
    new-instance v0, Lcom/android/settings/password/b;

    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const v1, 0x7f12063b

    .line 2046
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/16 v1, 0x37

    .line 2045
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/applications/ConvertToFbe;->a()V

    :cond_0
    return-void
.end method

.method private b()Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/ConvertToFbe;->a:Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;

    if-nez v0, :cond_0

    .line 105
    const-class v0, Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/ConvertToFbe;->a:Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/ConvertToFbe;->a:Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;->bind(Ljava/lang/Object;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ConvertToFbe;->a:Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;

    return-object v0
.end method

.method public static synthetic lambda$6TEnoAWHQGU3KWupgwtGAO3RSN8(Lcom/android/settings/applications/ConvertToFbe;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ConvertToFbe;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x192

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/android/settings/applications/ConvertToFbe;->a()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12063b

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/applications/ConvertToFbe;->b()Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;

    move-result-object p2

    const p3, 0x7f0d0126

    invoke-virtual {p2, p3}, Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;->getLayoutResID(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0106

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 61
    new-instance p3, Lcom/android/settings/applications/-$$Lambda$ConvertToFbe$6TEnoAWHQGU3KWupgwtGAO3RSN8;

    invoke-direct {p3, p0}, Lcom/android/settings/applications/-$$Lambda$ConvertToFbe$6TEnoAWHQGU3KWupgwtGAO3RSN8;-><init>(Lcom/android/settings/applications/ConvertToFbe;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/applications/ConvertToFbe;->b()Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;->onCreateView(Landroid/view/View;)V

    return-object p1
.end method
