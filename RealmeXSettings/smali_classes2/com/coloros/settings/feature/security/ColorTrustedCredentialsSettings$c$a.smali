.class final Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;
.super Lcom/android/settings/TrustedCredentialsSettings$e$a;
.source "ColorTrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field e:Lcom/color/support/widget/ColorSwitch;

.field final synthetic f:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;->f:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$e$a;-><init>(Lcom/android/settings/TrustedCredentialsSettings$e;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;B)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c$a;-><init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$c;)V

    return-void
.end method
