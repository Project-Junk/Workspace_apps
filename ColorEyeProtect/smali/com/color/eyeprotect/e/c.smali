.class public final Lcom/color/eyeprotect/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/common/recovery/ICommonRestoreInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/e/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/color/eyeprotect/e/c$a;


# instance fields
.field private b:Lcom/color/eyeprotect/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/eyeprotect/e/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/eyeprotect/e/c$a;-><init>(La/d/b/e;)V

    sput-object v0, Lcom/color/eyeprotect/e/c;->a:Lcom/color/eyeprotect/e/c$a;

    return-void
.end method

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

    move-object v0, p0

    check-cast v0, Lcom/color/eyeprotect/e/c;

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/color/eyeprotect/e/d;->a:Lcom/color/eyeprotect/e/d;

    iget-object p0, p0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez p0, :cond_0

    const-string v1, "mRecoveryData"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/color/eyeprotect/e/d;->a(Landroid/content/Context;Lcom/color/eyeprotect/e/b;)V

    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "EyeProtectRestoreImpl"

    const-string v0, "onRestore finish"

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string p1, "EyeProtectRestoreImpl"

    const-string v0, "onRestore error"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreTempData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "line"

    invoke-static {v1, v2}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/color/eyeprotect/e/c;

    iget-object v2, v2, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v2, :cond_0

    new-instance v2, Lcom/color/eyeprotect/e/b;

    move-object v3, v2

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

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const v21, 0xffff

    const/16 v22, 0x0

    invoke-direct/range {v3 .. v22}, Lcom/color/eyeprotect/e/b;-><init>(ZFZZFZZZIIIIZLjava/lang/String;IJILa/d/b/e;)V

    iput-object v2, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    sget-object v2, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v3, "EyeProtectRestoreImpl"

    const-string v4, "onRestoreTempData-->mIsRecovery change to true"

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v3, "EyeProtectRestoreImpl"

    const-string v4, "onRestoreTempData"

    goto :goto_0

    :goto_1
    const-string v2, ":"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "setting_enable_color_temperature_regulation"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_1

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    const-string v3, "setting_enable_color_temperature_regulation"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->a(Z)V

    goto/16 :goto_2

    :cond_2
    const-string v3, "color_eyeprotect_saved_level"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_3

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_3
    const-string v3, "color_eyeprotect_saved_level"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->a(F)V

    goto/16 :goto_2

    :cond_4
    const-string v3, "color_eyeprotect_enable"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_5

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_5
    const-string v3, "color_eyeprotect_enable"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->b(Z)V

    goto/16 :goto_2

    :cond_6
    const-string v3, "display_mode_change"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_7

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_7
    const-string v3, "display_mode_change"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->c(Z)V

    goto/16 :goto_2

    :cond_8
    const-string v3, "color_eyeprotect_start_level"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_9

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_9
    const-string v3, "color_eyeprotect_start_level"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->b(F)V

    goto/16 :goto_2

    :cond_a
    const-string v3, "normal_on"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_b

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_b
    const-string v3, "normal_on"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->d(Z)V

    goto/16 :goto_2

    :cond_c
    const-string v3, "gray_scale_on"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_d

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_d
    const-string v3, "gray_scale_on"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->e(Z)V

    goto/16 :goto_2

    :cond_e
    const-string v3, "fix_time_state"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_f

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_f
    const-string v3, "fix_time_state"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->f(Z)V

    goto/16 :goto_2

    :cond_10
    const-string v3, "eyeprotect_begin_time_hour"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_11

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_11
    const-string v3, "eyeprotect_begin_time_hour"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->a(I)V

    goto/16 :goto_2

    :cond_12
    const-string v3, "eyeprotect_begin_time_min"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_13

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_13
    const-string v3, "eyeprotect_begin_time_min"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->b(I)V

    goto/16 :goto_2

    :cond_14
    const-string v3, "eyeprotect_end_time_hour"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_15

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_15
    const-string v3, "eyeprotect_end_time_hour"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->c(I)V

    goto/16 :goto_2

    :cond_16
    const-string v3, "eyeprotect_end_time_min"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_17

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_17
    const-string v3, "eyeprotect_end_time_min"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->d(I)V

    goto/16 :goto_2

    :cond_18
    const-string v3, "eyeprotect_fix_time_change"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_19

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_19
    const-string v3, "eyeprotect_fix_time_change"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->g(Z)V

    goto/16 :goto_2

    :cond_1a
    const-string v3, "OppoEyeprotect_timer_active_time"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_1b

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1b
    const-string v3, "OppoEyeprotect_timer_active_time"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1c
    const-string v3, "shortcuts_panel_show_guide_dialog"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_1d

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1d
    const-string v3, "shortcuts_panel_show_guide_dialog"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/e/b;->e(I)V

    goto :goto_2

    :cond_1e
    const-string v3, "eyeprotect_enable_time"

    invoke-static {v1, v3, v6, v5, v4}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v0, v0, Lcom/color/eyeprotect/e/c;->b:Lcom/color/eyeprotect/e/b;

    if-nez v0, :cond_1f

    const-string v3, "mRecoveryData"

    invoke-static {v3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1f
    const-string v3, "eyeprotect_enable_time"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/color/eyeprotect/e/b;->a(J)V

    :cond_20
    :goto_2
    return-void
.end method
