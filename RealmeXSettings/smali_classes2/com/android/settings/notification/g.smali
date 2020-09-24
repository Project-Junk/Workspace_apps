.class public final Lcom/android/settings/notification/g;
.super Lcom/android/settings/notification/l;
.source "DeletedChannelsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "deleted"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 3

    .line 42
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/g;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/g;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/g;->d:Lcom/android/settings/notification/k$a;

    iget v2, v2, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {v0, v2}, Lcom/android/settings/notification/k;->d(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/g;->d:Lcom/android/settings/notification/k$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/notification/g;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/g;->d:Lcom/android/settings/notification/k$a;

    iget v2, v2, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {v0, v2}, Lcom/android/settings/notification/k;->d(Ljava/lang/String;I)I

    move-result v0

    .line 56
    iget-object v2, p0, Lcom/android/settings/notification/g;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100017

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 56
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
