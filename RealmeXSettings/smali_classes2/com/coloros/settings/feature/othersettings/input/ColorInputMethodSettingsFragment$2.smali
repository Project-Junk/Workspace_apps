.class final Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment$2;
.super Lcom/android/settings/search/a;
.source "ColorInputMethodSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 227
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "security_window"

    .line 229
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
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

    .line 146
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f120fe1

    .line 1141
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120be3

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "language_keyboard_settings"

    .line 152
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 153
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const v1, 0x7f0809a1

    .line 154
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 155
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 156
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "keyboard_settings_category"

    .line 159
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f120f70

    .line 160
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 161
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 162
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 163
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "current_input_method"

    .line 166
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f120676

    .line 167
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 168
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 169
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 170
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "security_window"

    .line 173
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f1213fa

    .line 174
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 175
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 176
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 177
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "installed_ime_category"

    .line 180
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f120b33

    .line 181
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 182
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 183
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 184
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "input_method_manager"

    .line 187
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f120b14

    .line 188
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 189
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 190
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 191
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "pointer_speed"

    .line 194
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f121039

    .line 195
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 196
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 197
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 198
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "key_user_dictionary_settings"

    .line 201
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f121822

    .line 202
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 203
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 204
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 205
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-eqz v2, :cond_0

    .line 208
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "auto_fill_category"

    .line 209
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f120288

    .line 210
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 211
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 212
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 213
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "auto_fill"

    .line 216
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f120287

    .line 217
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 218
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 219
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 220
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p2
.end method
