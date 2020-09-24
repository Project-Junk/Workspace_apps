.class public abstract Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.super Ljava/lang/Object;
.source "AbsSettingsValueProxy.java"


# static fields
.field public static final INVALID_SETTINGS_VALUE:I = -0x1


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected static getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected static getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x2

    .line 37
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected static getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected static getSecureStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    .line 54
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getSecureStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x2

    .line 72
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected static getSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected static getSystemStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    .line 90
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getSystemStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static setGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 112
    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected static setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x2

    .line 45
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method protected static setSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method protected static setSecureStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x2

    .line 62
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected static setSecureStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected static setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x2

    .line 80
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method protected static setSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 84
    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method protected static setSystemStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSystemStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static setSystemStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 102
    invoke-static {p0, p1, p2, p3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSystemStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected abstract checkValidity(Landroid/content/Context;)V
.end method
