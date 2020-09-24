.class public Lcom/android/settings/CryptKeeperConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeperConfirm$Blank;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/Button;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 107
    new-instance v0, Lcom/android/settings/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperConfirm$1;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12065b

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d0129

    const/4 p3, 0x0

    .line 172
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm;->a:Landroid/view/View;

    .line 1159
    iget-object p1, p0, Lcom/android/settings/CryptKeeperConfirm;->a:Landroid/view/View;

    const p2, 0x7f0a0279

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm;->b:Landroid/widget/Button;

    .line 1160
    iget-object p1, p0, Lcom/android/settings/CryptKeeperConfirm;->b:Landroid/widget/Button;

    iget-object p2, p0, Lcom/android/settings/CryptKeeperConfirm;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/android/settings/CryptKeeperConfirm;->a:Landroid/view/View;

    return-object p1
.end method
