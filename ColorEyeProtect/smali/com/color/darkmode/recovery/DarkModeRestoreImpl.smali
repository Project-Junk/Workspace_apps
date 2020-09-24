.class public final Lcom/color/darkmode/recovery/DarkModeRestoreImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/common/recovery/ICommonRestoreInterface;


# instance fields
.field private mIsRecovery:Z

.field private mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestore(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mIsRecovery:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/color/darkmode/recovery/DarkModeXmlComposer;->INSTANCE:Lcom/color/darkmode/recovery/DarkModeXmlComposer;

    iget-object v1, p0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/color/darkmode/recovery/DarkModeXmlComposer;->restoreData(Landroid/content/Context;Lcom/color/darkmode/recovery/RecoveryData;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mIsRecovery:Z

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p1, "onRestore finish"

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p1, "onRestore error"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreTempData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "line"

    invoke-static {v1, v2}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mIsRecovery:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/color/darkmode/recovery/RecoveryData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1fff

    const/16 v18, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v18}, Lcom/color/darkmode/recovery/RecoveryData;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILa/d/b/e;)V

    iput-object v2, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mIsRecovery:Z

    sget-object v2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v3, "onRestoreTempData-->mIsRecovery change to true"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v3, "onRestoreTempData"

    goto :goto_0

    :goto_1
    const-string v2, ":"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "ColorDarkMode_begin_time"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    const-string v3, "ColorDarkMode_begin_time"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setBeginTime(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v3, "ColorDarkMode_end_time"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    const-string v3, "ColorDarkMode_end_time"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setEndTime(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v3, "ColorDarkMode_click_app"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    const-string v3, "ColorDarkMode_click_app"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setClickApp(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v3, "ColorDarkMode_open_app"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_7

    invoke-static {}, La/d/b/g;->a()V

    :cond_7
    const-string v3, "ColorDarkMode_open_app"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setOpenApp(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v3, "ColorDarkMode_rom_update_hidden_app"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_9

    invoke-static {}, La/d/b/g;->a()V

    :cond_9
    const-string v3, "ColorDarkMode_rom_update_hidden_app"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setRomUpdateHiddenApp(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v3, "ColorDarkMode_rom_update_open_app"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_b

    invoke-static {}, La/d/b/g;->a()V

    :cond_b
    const-string v3, "ColorDarkMode_rom_update_open_app"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setRomUpdateOpenApp(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const-string v3, "ColorDarkMode_time_switch"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_d

    invoke-static {}, La/d/b/g;->a()V

    :cond_d
    const-string v3, "ColorDarkMode_time_switch"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setTimeSwitch(Z)V

    goto/16 :goto_2

    :cond_e
    const-string v3, "ColorDarkMode_switch_open_never_hint"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_f

    invoke-static {}, La/d/b/g;->a()V

    :cond_f
    const-string v3, "ColorDarkMode_switch_open_never_hint"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setSwitchNeverOpenHint(Z)V

    goto/16 :goto_2

    :cond_10
    const-string v3, "DarkModeXmlComposer_switch"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_11

    invoke-static {}, La/d/b/g;->a()V

    :cond_11
    const-string v3, "DarkModeXmlComposer_switch"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setSwitch(Z)V

    goto/16 :goto_2

    :cond_12
    const-string v3, "DarkModeXmlComposer_romupdate_open_version"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_13

    invoke-static {}, La/d/b/g;->a()V

    :cond_13
    const-string v3, "DarkModeXmlComposer_romupdate_open_version"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setRomUpdateOpenAppVersionKey(Ljava/lang/String;)V

    goto :goto_2

    :cond_14
    const-string v3, "DarkModeXmlComposer_romupdate_hide_version"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_15

    invoke-static {}, La/d/b/g;->a()V

    :cond_15
    const-string v3, "DarkModeXmlComposer_romupdate_hide_version"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setRomUpdateHiddenAppVersionKey(Ljava/lang/String;)V

    goto :goto_2

    :cond_16
    const-string v3, "DarkModeXmlComposer_romupdate_open"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_17

    invoke-static {}, La/d/b/g;->a()V

    :cond_17
    const-string v3, "DarkModeXmlComposer_romupdate_open"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setRomUpdateOpenAppVersion(I)V

    goto :goto_2

    :cond_18
    const-string v3, "DarkModeXmlComposer_romupdate_hide"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v0, v0, Lcom/color/darkmode/recovery/DarkModeRestoreImpl;->mRecoveryData:Lcom/color/darkmode/recovery/RecoveryData;

    if-nez v0, :cond_19

    invoke-static {}, La/d/b/g;->a()V

    :cond_19
    const-string v3, "DarkModeXmlComposer_romupdate_hide"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/recovery/RecoveryData;->setRomUpdateHiddenAppVersion(I)V

    :cond_1a
    :goto_2
    return-void
.end method
