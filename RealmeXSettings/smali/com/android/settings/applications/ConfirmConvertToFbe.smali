.class public Lcom/android/settings/applications/ConfirmConvertToFbe;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ConfirmConvertToFbe.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a()Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/ConfirmConvertToFbe;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 63
    const-class v0, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/ConfirmConvertToFbe;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/ConfirmConvertToFbe;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ConfirmConvertToFbe;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x193

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/applications/ConfirmConvertToFbe;->a()Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;

    move-result-object p2

    const p3, 0x7f0d0114

    invoke-virtual {p2, p3}, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;->getLayoutResID(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0105

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 40
    new-instance p3, Lcom/android/settings/applications/ConfirmConvertToFbe$1;

    invoke-direct {p3, p0}, Lcom/android/settings/applications/ConfirmConvertToFbe$1;-><init>(Lcom/android/settings/applications/ConfirmConvertToFbe;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-direct {p0}, Lcom/android/settings/applications/ConfirmConvertToFbe;->a()Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;->onCreateView(Landroid/view/View;)V

    return-object p1
.end method
