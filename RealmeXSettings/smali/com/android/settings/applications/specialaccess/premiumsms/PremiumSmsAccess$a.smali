.class final Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;
.super Landroidx/preference/DropDownPreference;
.source "PremiumSmsAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;

.field private final b:Lcom/coloros/settingslib/applications/ApplicationsState$a;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/content/Context;)V
    .locals 1

    .line 216
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->a:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;

    .line 217
    invoke-direct {p0, p3}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 218
    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 219
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {p1, p3}, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a(Landroid/content/Context;)V

    .line 220
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p1, 0x7f0300cd

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->setEntries(I)V

    const/4 p1, 0x3

    .line 225
    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    const-string p3, "1"

    aput-object p3, p1, p2

    const/4 p3, 0x1

    const-string v0, "2"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "3"

    aput-object v0, p1, p3

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1235
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of p1, p1, Lcom/android/settings/applications/j$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/j$a;

    iget p2, p1, Lcom/android/settings/applications/j$a;->a:I

    .line 230
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->setValue(Ljava/lang/String;)V

    const-string p1, "%s"

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;)Lcom/coloros/settingslib/applications/ApplicationsState$a;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    return-object p0
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a$1;-><init>(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 251
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/DropDownPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
