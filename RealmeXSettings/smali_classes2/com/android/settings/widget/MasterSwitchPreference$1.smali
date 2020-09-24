.class final Lcom/android/settings/widget/MasterSwitchPreference$1;
.super Ljava/lang/Object;
.source "MasterSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MasterSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->a(Lcom/android/settings/widget/MasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->a(Lcom/android/settings/widget/MasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->b(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->a(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->b(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->b(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->a(Z)V

    return-void

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->b(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->a(Lcom/android/settings/widget/MasterSwitchPreference;Z)Z

    return-void
.end method
