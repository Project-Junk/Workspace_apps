.class final Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment$1;
.super Lcom/android/settings/search/a;
.source "ColorStatusInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 298
    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

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

    .line 288
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const-string v0, "imei_info"

    .line 289
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "meid_info"

    .line 290
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "wifi_ip_address"

    .line 291
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
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

    .line 122
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const-class v0, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1207a3

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "device_status_screen"

    .line 131
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 132
    iput-object v1, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const v3, 0x7f080986

    .line 133
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 134
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 135
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string v4, "com.android.settings"

    .line 136
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    const-string v5, "com.android.settings.Settings$ColorStatusInfoActivity"

    .line 137
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 138
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 139
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "battery_status"

    .line 142
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f12032a

    .line 143
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 144
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 145
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 146
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 147
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 148
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 149
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 150
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "battery_level"

    .line 153
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f1202f5

    .line 154
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 155
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 156
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 157
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 158
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 159
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 160
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 161
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "imei_sv"

    .line 164
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f121545

    .line 165
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 166
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 167
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 168
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 169
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 170
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 171
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 172
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "esim_id_value"

    .line 175
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f121540

    .line 176
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 177
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 178
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 179
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 180
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 181
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 182
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 183
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "wifi_mac_address"

    .line 186
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f121558

    .line 187
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 188
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 189
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 190
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 191
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 192
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 193
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 194
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "bt_address"

    .line 197
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f12153d

    .line 198
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 199
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 200
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 201
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 202
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 203
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 204
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 205
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "serial_number"

    .line 208
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f121552

    .line 209
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 210
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 211
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 212
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 213
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 214
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 215
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 216
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "up_time"

    .line 219
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f121556

    .line 220
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 221
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 222
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 223
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 224
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 225
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 226
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 227
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "wimax_mac_address"

    .line 230
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f121559

    .line 231
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 232
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 233
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 234
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 235
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 236
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 237
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 238
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "fcc_equipment_id"

    .line 241
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f12098f

    .line 242
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 243
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 244
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 245
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 246
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 247
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 248
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 249
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static {p1}, Lcom/coloros/settings/utils/bb;->g(Landroid/content/Context;)I

    move-result v0

    .line 252
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "imei_info_rename_raw"

    .line 253
    iput-object v6, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const/4 v6, 0x0

    const v7, 0x7f120b03

    const/4 v8, 0x1

    if-le v0, v8, :cond_0

    .line 255
    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v9, 0x7f121544

    .line 257
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 259
    :goto_0
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 260
    const-class v9, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 261
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 262
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 263
    iput-object v5, v2, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 264
    iput-object v4, v2, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 265
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-le v0, v8, :cond_1

    move v2, v8

    :goto_1
    if-ge v2, v0, :cond_1

    .line 270
    new-instance v9, Lcom/android/settings/search/e;

    invoke-direct {v9, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "imei_info"

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 272
    new-array v10, v8, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {p1, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 273
    iput v3, v9, Lcom/android/settings/search/e;->iconResId:I

    .line 274
    const-class v10, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 275
    iput-object v1, v9, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 276
    iput-object v4, v9, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 277
    iput-object v5, v9, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 278
    iput-object v4, v9, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 279
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p2
.end method
