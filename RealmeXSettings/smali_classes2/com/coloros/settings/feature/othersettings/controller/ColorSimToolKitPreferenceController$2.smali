.class final Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;
.super Landroid/os/AsyncTask;
.source "ColorSimToolKitPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->updateStkPrefState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 2177
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$100(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;I)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$200(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2178
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$300(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/bb;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$400(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-nez p1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v1

    .line 2182
    :goto_3
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$500(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v2

    .line 2183
    invoke-virtual {v2, v0}, Landroid/telephony/ColorOSTelephonyManager;->getSimStateGemini(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    .line 2184
    :goto_4
    iget-object v4, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {v4}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$600(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v4

    .line 2185
    invoke-virtual {v4, v1}, Landroid/telephony/ColorOSTelephonyManager;->getSimStateGemini(I)I

    move-result v4

    if-ne v4, v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    move v3, v0

    :goto_5
    if-nez v2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    move v2, v0

    goto :goto_7

    :cond_7
    :goto_6
    move v2, v1

    :goto_7
    if-eqz p1, :cond_8

    if-eqz v2, :cond_8

    move v0, v1

    .line 2187
    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 171
    check-cast p1, Ljava/lang/Boolean;

    .line 1192
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$700(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$700(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sim_toolkit_settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1204
    invoke-static {}, Lcom/coloros/settings/utils/p;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$800(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1205
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController$2;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;->access$800(Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
