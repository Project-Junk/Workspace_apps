.class final Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a$1;
.super Ljava/lang/Object;
.source "PremiumSmsAccess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a$1;->a:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a$1;->a:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;

    iget-object v0, v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->a:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->a(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a$1;->a:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;

    invoke-static {v1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->a(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a$1;->a:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->a(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v1

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
