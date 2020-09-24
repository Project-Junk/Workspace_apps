.class public Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;
.super Lcom/color/injector/adaptor/i;
.source "RunningServiceDetailsModule.java"


# instance fields
.field private mHeader:Landroid/view/View;

.field private mMumHeader:I

.field private mPosition:I

.field private mProcessesHeader:Landroid/view/View;

.field private mServicesHeader:Landroid/view/View;

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, v0, v0}, Lcom/color/injector/adaptor/i;-><init>(II)V

    return-void
.end method


# virtual methods
.method public addProcessesHeader(Lcom/android/settings/applications/RunningServiceDetails;)Z
    .locals 4

    .line 186
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->p:I

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00eb

    iget-object v3, p1, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mProcessesHeader:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mProcessesHeader:Landroid/view/View;

    const v1, 0x7f0a06f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1212b5

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mProcessesHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    :cond_1
    iget v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->p:I

    return v1
.end method

.method public addSeparatorHeader(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mMumHeader:I

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00eb

    iget-object v2, p1, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mHeader:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mHeader:Landroid/view/View;

    const v1, 0x7f0a06f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    :cond_1
    iget p1, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mMumHeader:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mMumHeader:I

    return-void
.end method

.method public addServiceDetailsView(Lcom/android/settings/applications/RunningServiceDetails$a;Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 136
    iget-object v1, p1, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    iget-object v1, v1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1

    .line 137
    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    iget-object v0, v0, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p1, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    iget-object v1, v1, Lcom/android/settings/applications/y$c;->c:Landroid/content/pm/PackageItemInfo;

    if-eqz v1, :cond_2

    .line 139
    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    iget-object v0, v0, Lcom/android/settings/applications/y$c;->c:Landroid/content/pm/PackageItemInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 141
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/settings/applications/RunningServiceDetails;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "forcestop"

    invoke-static {p2, v0, v1}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 143
    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails$a;->b:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public addServicesHeader(Lcom/android/settings/applications/RunningServiceDetails;)Z
    .locals 4

    .line 171
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->o:I

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00eb

    iget-object v3, p1, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mServicesHeader:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mServicesHeader:Landroid/view/View;

    const v1, 0x7f0a06f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1212b6

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mServicesHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    :cond_1
    iget v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->o:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->o:I

    return v1
.end method

.method public getLayoutResID(I)I
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d00dd

    return p1
.end method

.method public getServiceDetailLayoutResID(I)I
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d00df

    return p1
.end method

.method public getServiceDetailProcessLayoutResID(I)I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d00de

    return p1
.end method

.method public onCreate(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Lcom/android/settings/applications/RunningServiceDetails;Landroid/view/View;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a070a

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    const v0, 0x7f0a03c9

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0a020e

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public removeHead(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mHeader:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mHeader:Landroid/view/View;

    :cond_1
    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mMumHeader:I

    .line 158
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mServicesHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mServicesHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mServicesHeader:Landroid/view/View;

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mProcessesHeader:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 164
    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mProcessesHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mProcessesHeader:Landroid/view/View;

    :cond_3
    return-void
.end method

.method public setListViewStyle(Landroid/view/View;Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 128
    :cond_0
    iget p2, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mPosition:I

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/utils/w;->a(Landroid/view/View;II)V

    return-void
.end method

.method public setPositionAndSize(II)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mPosition:I

    .line 55
    iput p2, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mSize:I

    return-void
.end method

.method public setRootLayoutPara(Landroid/view/View;Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f07051c

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p2, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 121
    iget p2, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mPosition:I

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/development/RunningServiceDetailsModule;->mSize:I

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/utils/w;->a(Landroid/view/View;II)V

    return-void
.end method
