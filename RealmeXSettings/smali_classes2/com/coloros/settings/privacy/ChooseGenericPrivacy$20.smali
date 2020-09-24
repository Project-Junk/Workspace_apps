.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$20;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Lcom/coloros/settings/privacy/a/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/a/g;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/a/g;Landroid/content/Context;)V
    .locals 0

    .line 1172
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$20;->a:Lcom/coloros/settings/privacy/a/g;

    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$20;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z[B)V
    .locals 4

    .line 1175
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearSellmodePassword matched "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseGenericPrivacy"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1177
    iget-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$20;->a:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a([B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1179
    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$20;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    const-string v2, "coloros_fingerprint_file_encryption_switch"

    .line 1180
    invoke-static {p2, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "coloros_fingerprint_app_encryption_switch"

    .line 1181
    invoke-static {p2, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "coloros_face_unlock_file_encryption_switch"

    .line 1182
    invoke-static {p2, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "coloros_face_unlock_app_encryption_switch"

    .line 1183
    invoke-static {p2, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "privacy_quesion_type_choose"

    .line 1184
    invoke-static {p2, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "privacy_quesion_detail_choose"

    const-string v3, ""

    .line 1185
    invoke-static {p2, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1186
    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$20;->b:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;Z)V

    .line 1187
    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$20;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/settings/privacy/c;->c(Landroid/content/Context;)V

    .line 1189
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "clearSellmodePassword delete "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
