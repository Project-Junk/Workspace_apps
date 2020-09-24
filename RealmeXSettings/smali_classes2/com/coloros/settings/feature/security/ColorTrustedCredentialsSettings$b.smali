.class final Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;
.super Lcom/android/settings/TrustedCredentialsSettings$d;
.source "ColorTrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$e;I)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TrustedCredentialsSettings$d;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$e;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$e;IB)V
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$e;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/LinearLayout;)V
    .locals 2

    .line 290
    invoke-super {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$d;->a(Landroid/widget/LinearLayout;)V

    .line 291
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;->c:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 292
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 293
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;->a:Landroid/widget/ListView;

    const v0, 0x7f080458

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 294
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 295
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;->a:Landroid/widget/ListView;

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 296
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;->a:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFitsSystemWindows(Z)V

    .line 297
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 298
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$b;->a:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
