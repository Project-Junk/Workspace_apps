.class final Lcom/android/settings/widget/MasterCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "MasterCheckBoxPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MasterCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/MasterCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MasterCheckBoxPreference;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->a:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->a:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->a(Lcom/android/settings/widget/MasterCheckBoxPreference;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->a:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->a(Lcom/android/settings/widget/MasterCheckBoxPreference;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->a:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->b(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->a(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->a:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->b(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->a:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->b(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->a(Z)V

    return-void

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference$1;->a:Lcom/android/settings/widget/MasterCheckBoxPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->b(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->a(Lcom/android/settings/widget/MasterCheckBoxPreference;Z)Z

    return-void
.end method
