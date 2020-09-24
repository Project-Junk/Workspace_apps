.class public Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "EnabledNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mIsGlobalCdma:Z

.field mShow4GForLTE:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preferred_network_mode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private updatePreferenceEntries(Landroidx/preference/ListPreference;)V
    .locals 7

    .line 127
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const v2, 0x7f030082

    const v3, 0x7f03007d

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "lte_service_forced"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 130
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preferred_network_mode"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 136
    invoke-static {v1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v4, :cond_a

    if-eqz v0, :cond_1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const v0, 0x7f030080

    .line 160
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030081

    .line 162
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_4

    :pswitch_2
    const v0, 0x7f03007e

    .line 151
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03007f

    .line 153
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_4

    .line 166
    :cond_1
    :goto_1
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 168
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_4

    :cond_2
    if-ne v0, v4, :cond_a

    .line 175
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {v0, v4}, Lcom/android/settings/network/telephony/d;->f(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f03008b

    .line 176
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03008c

    .line 178
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_4

    :cond_3
    const-string v0, "lte_enabled_bool"

    const-string v4, "prefer_2g_bool"

    if-eqz v1, :cond_4

    .line 181
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 182
    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const v0, 0x7f030086

    .line 183
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030087

    .line 184
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_6

    .line 186
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 187
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v0, :cond_5

    const v0, 0x7f030084

    goto :goto_2

    :cond_5
    const v0, 0x7f030085

    .line 190
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030088

    .line 191
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    .line 194
    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f030089

    .line 195
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03008a

    .line 197
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    .line 199
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-eqz v0, :cond_8

    .line 200
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 201
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_4

    .line 203
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v0, :cond_9

    const v0, 0x7f03007c

    goto :goto_3

    :cond_9
    const v0, 0x7f030083

    .line 205
    :goto_3
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03008d

    .line 206
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 211
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/d;->d(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f0300bd

    .line 212
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f0300bf

    .line 214
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V
    .locals 7

    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v0, 0x7f120e0b

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120e25

    const v4, 0x7f120e24

    const/16 v5, 0xa

    const v6, 0x7f120e0a

    packed-switch p2, :pswitch_data_0

    .line 331
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120db2

    new-array v2, v2, [Ljava/lang/Object;

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 331
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const/16 p2, 0x15

    .line 284
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    :pswitch_1
    const/16 p2, 0x12

    .line 226
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    :pswitch_2
    const/16 p2, 0xd

    .line 302
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 301
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 311
    :pswitch_3
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {p2, v1}, Lcom/android/settings/network/telephony/d;->f(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x16

    .line 313
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 312
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 318
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 317
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 320
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    .line 322
    invoke-static {p2, v1}, Lcom/android/settings/network/telephony/d;->d(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 325
    :cond_1
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 323
    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 254
    :pswitch_4
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {p2, v1}, Lcom/android/settings/network/telephony/d;->d(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f12107d

    .line 255
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 261
    :cond_4
    :pswitch_5
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p2, :cond_6

    const/16 p2, 0x9

    .line 263
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 262
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 264
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 268
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 267
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 274
    :pswitch_6
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-static {p2, v0}, Lcom/android/settings/network/telephony/d;->d(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x7f12107c

    .line 275
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    :cond_7
    const/16 p2, 0x8

    .line 279
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 278
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    :pswitch_7
    const/4 p2, 0x5

    .line 297
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const p2, 0x7f120e08

    .line 298
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    :pswitch_8
    const/4 p2, 0x4

    .line 292
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 291
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 242
    :pswitch_9
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p2, :cond_8

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const p2, 0x7f120e09

    .line 245
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 248
    :cond_8
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 247
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 232
    :pswitch_a
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p2, :cond_9

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, v6}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    .line 236
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "hide_carrier_network_settings_bool"

    .line 63
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "hide_preferred_network_type_bool"

    .line 66
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    if-nez p1, :cond_3

    .line 69
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "world_phone_bool"

    .line 72
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_5

    return v2

    :cond_5
    const/4 p1, 0x2

    return p1
.end method

.method public init(I)V
    .locals 3

    .line 106
    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    .line 107
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 110
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "show_cdma_choices_bool"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-eqz p1, :cond_2

    const-string v0, "show_4g_for_lte_data_icon_bool"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 92
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 94
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preferred_network_mode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 84
    check-cast p1, Landroidx/preference/ListPreference;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->getPreferredNetworkMode()I

    move-result v0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceEntries(Landroidx/preference/ListPreference;)V

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V

    return-void
.end method
