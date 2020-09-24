.class final Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;
.super Ljava/lang/Object;
.source "UnrestrictedDataAccessPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;->a:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;->a:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;->a:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    invoke-static {v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;->a:Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v1

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
