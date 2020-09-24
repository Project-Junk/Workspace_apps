.class final Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment$1;
.super Lcom/android/settings/search/a;
.source "RecoveryDataMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-static {p1}, Lcom/coloros/settings/utils/ba;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "clear_contacts_data"

    .line 239
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/ba;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "clear_message_data"

    .line 242
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 143
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/bc;->a(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 146
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/bc;->a(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    const-class v1, Lcom/coloros/settings/feature/othersettings/recover/RecoveryDataMainFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-eqz v2, :cond_1

    .line 153
    new-instance v2, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 155
    :cond_1
    new-instance v2, Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;-><init>(Landroid/content/Context;)V

    .line 158
    :goto_1
    invoke-virtual {v2}, Lcom/android/settings/core/a;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0809a1

    .line 160
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 161
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 162
    iput-object v1, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const-string v4, "oppo_reset_key"

    .line 163
    iput-object v4, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 166
    sget-boolean v4, Lcom/coloros/settings/a;->a:Z

    if-eqz v4, :cond_2

    const v4, 0x7f120d41

    goto :goto_2

    :cond_2
    const v4, 0x7f120fb3

    :goto_2
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 168
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/ColorClearSettingPreference;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearSettingPreference;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V

    .line 174
    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearSettingPreference;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 176
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 177
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 178
    iput-object v1, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const-string v5, "clear_all_settings"

    .line 179
    iput-object v5, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v5, 0x7f1204fa

    .line 180
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 181
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_3
    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;

    invoke-direct {v2, p1, v4}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V

    .line 185
    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 187
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 188
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 189
    iput-object v1, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const-string v5, "clear_all_app_data"

    .line 190
    iput-object v5, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v5, 0x7f1204f7

    .line 191
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const v5, 0x7f1204f6

    .line 192
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/search/e;->b:Ljava/lang/String;

    .line 193
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_4
    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;

    invoke-direct {v2, p1, v4}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V

    .line 197
    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAllDataPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 198
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 199
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 200
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 201
    iput-object v1, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const-string v5, "clear_all_data"

    .line 202
    iput-object v5, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v5, 0x7f1204f9

    .line 203
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const v5, 0x7f1204f8

    .line 204
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/search/e;->b:Ljava/lang/String;

    .line 205
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_5
    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/ColorClearContactsPreferenceController;

    invoke-direct {v2, p1, v4}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearContactsPreferenceController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V

    .line 209
    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearContactsPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 210
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 211
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 212
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 213
    iput-object v1, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const-string v5, "clear_contacts_data"

    .line 214
    iput-object v5, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v5, 0x7f1204ff

    .line 215
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const v5, 0x7f1204fd

    .line 216
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/settings/search/e;->b:Ljava/lang/String;

    .line 217
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_6
    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;

    invoke-direct {v2, p1, v4, v4}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 221
    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearMessagePreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 222
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 223
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 224
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 225
    iput-object v1, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const-string v0, "clear_message_data"

    .line 226
    iput-object v0, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v0, 0x7f12050b

    .line 227
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const v0, 0x7f120509

    .line 228
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/search/e;->b:Ljava/lang/String;

    .line 229
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p2

    nop

    :array_0
    .array-data 4
        0x7f120fe1
        0x7f121111
        0x7f120d41
    .end array-data

    :array_1
    .array-data 4
        0x7f120fe1
        0x7f120fb3
    .end array-data
.end method
