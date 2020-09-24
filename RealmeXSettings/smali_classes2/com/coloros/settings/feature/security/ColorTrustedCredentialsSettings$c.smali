.class final Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;
.super Lcom/android/settings/TrustedCredentialsSettings$e;
.source "ColorTrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$f;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$e;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$f;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/TrustedCredentialsSettings$c;Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 248
    new-instance p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;

    invoke-direct {p3, p0, v0}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;B)V

    .line 249
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00fc

    .line 250
    invoke-virtual {v1, v2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 251
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0724

    .line 253
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0a0725

    .line 255
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0a0723

    .line 256
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorSwitch;

    .line 1276
    iput-object v1, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->e:Lcom/color/support/widget/ColorSwitch;

    .line 2276
    iget-object v1, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->e:Lcom/color/support/widget/ColorSwitch;

    .line 258
    invoke-virtual {v1, p0}, Lcom/color/support/widget/ColorSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3276
    iget-object v1, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->e:Lcom/color/support/widget/ColorSwitch;

    .line 259
    invoke-virtual {v1, p0}, Lcom/color/support/widget/ColorSwitch;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;

    move-object v4, p4

    move-object p4, p3

    move-object p3, v4

    .line 263
    :goto_0
    iget-object v1, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->a:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-boolean p2, p2, Lcom/android/settings/TrustedCredentialsSettings$f;->e:Z

    if-eqz p2, :cond_1

    .line 4276
    iget-object p2, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->e:Lcom/color/support/widget/ColorSwitch;

    .line 266
    iget-boolean v1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 5276
    iget-object p2, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->e:Lcom/color/support/widget/ColorSwitch;

    .line 267
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {v1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->a(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "no_config_credentials"

    invoke-virtual {v1, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lcom/color/support/widget/ColorSwitch;->setEnabled(Z)V

    .line 6276
    iget-object p2, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->e:Lcom/color/support/widget/ColorSwitch;

    .line 270
    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorSwitch;->setVisibility(I)V

    .line 7276
    iget-object p2, p3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->e:Lcom/color/support/widget/ColorSwitch;

    .line 271
    invoke-virtual {p2, p1}, Lcom/color/support/widget/ColorSwitch;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-object p4
.end method

.method public final a()V
    .locals 2

    .line 233
    new-instance v0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    check-cast v1, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b(I)Lcom/android/settings/TrustedCredentialsSettings$d;
    .locals 3

    .line 228
    new-instance v0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$e;IB)V

    return-object v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 221
    invoke-super/range {p0 .. p5}, Lcom/android/settings/TrustedCredentialsSettings$e;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/TrustedCredentialsSettings$e;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x1020016

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x800005

    .line 215
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    return-object p1
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$c;

    .line 240
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings$c;)V

    const/4 p1, 0x1

    return p1
.end method
