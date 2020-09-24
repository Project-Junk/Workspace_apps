.class public Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "EnvelopeSettingsValueProxy.java"


# static fields
.field public static final ENVELOPE_ASSISTANT_DISABLE:I = 0x0

.field public static final ENVELOPE_ASSISTANT_ENABLE:I = 0x1

.field public static final ENVELOPE_AUTO_OPEN_DISABLE:I = 0x0

.field public static final ENVELOPE_AUTO_OPEN_ENABLE:I = 0x1

.field private static final ENVELOPE_COUNT_CHANGED_NEW:I = 0x1

.field private static final ENVELOPE_COUNT_CHANGED_OLD:I = 0x0

.field public static final ENVELOPE_COUNT_DEFAULT:I = 0x0

.field public static final ENVELOPE_NOTICE_SOUND_DISABLE:I = 0x0

.field public static final ENVELOPE_NOTICE_SOUND_ENABLE:I = 0x1

.field public static final KEY_ENVELOPE_ASSISTANT_ENABLE:Ljava/lang/String; = "envelope_assistant_enable"

.field public static final KEY_ENVELOPE_AUTO_OPEN_ENABLE:Ljava/lang/String; = "envelope_auto_open"

.field public static final KEY_ENVELOPE_COUNT:Ljava/lang/String; = "key_envelope_count"

.field public static final KEY_ENVELOPE_COUNT_CHANGED:Ljava/lang/String; = "envelope_count_changed"

.field public static final KEY_ENVELOPE_NOTICE_SOUND_ENABLE:Ljava/lang/String; = "envelope_notice_sound_enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getEnvelopeAssistantEnable(Landroid/content/Context;)I
    .locals 2

    const-string v0, "envelope_assistant_enable"

    const/4 v1, 0x1

    .line 52
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getEnvelopeAutoOpenEnable(Landroid/content/Context;)I
    .locals 2

    const-string v0, "envelope_auto_open"

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getEnvelopeCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "key_envelope_count"

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getEnvelopeNoticeSoundEnable(Landroid/content/Context;)I
    .locals 2

    const-string v0, "envelope_notice_sound_enable"

    const/4 v1, 0x1

    .line 60
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static notifyEnvelopeCountChanged(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "envelope_count_changed"

    .line 76
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 77
    :cond_0
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setEnvelopeAssistantEnable(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "envelope_assistant_enable"

    .line 56
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setEnvelopeAutoOpenEnable(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "envelope_auto_open"

    .line 72
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setEnvelopeCount(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "key_envelope_count"

    .line 48
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setEnvelopeNoticeSoundEnable(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "envelope_notice_sound_enable"

    .line 64
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAssistantEnable(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    .line 84
    invoke-static {p1, p0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeAssistantEnable(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
