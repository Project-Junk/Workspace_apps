.class public final Lcom/android/settings/applications/assist/c$b;
.super Lcom/android/settings/applications/assist/c$a;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final h:Landroid/service/voice/VoiceInteractionServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/service/voice/VoiceInteractionServiceInfo;)V
    .locals 2

    .line 84
    invoke-virtual {p2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/applications/assist/c$a;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    .line 85
    iput-object p2, p0, Lcom/android/settings/applications/assist/c$b;->h:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-void
.end method
