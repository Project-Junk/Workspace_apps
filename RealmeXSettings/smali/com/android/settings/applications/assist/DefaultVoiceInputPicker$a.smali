.class public final Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;
.super Lcom/android/settingslib/applications/b;
.source "DefaultVoiceInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/android/settings/applications/assist/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/settings/applications/assist/c$a;Z)V
    .locals 7

    .line 144
    iget-object v4, p4, Lcom/android/settings/applications/assist/c$a;->b:Landroid/content/ComponentName;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 145
    iput-object p4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;->a:Lcom/android/settings/applications/assist/c$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;->a:Lcom/android/settings/applications/assist/c$a;

    instance-of v1, v0, Lcom/android/settings/applications/assist/c$b;

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, v0, Lcom/android/settings/applications/assist/c$a;->g:Ljava/lang/CharSequence;

    return-object v0

    .line 158
    :cond_0
    iget-object v0, v0, Lcom/android/settings/applications/assist/c$a;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;->a:Lcom/android/settings/applications/assist/c$a;

    iget-object v0, v0, Lcom/android/settings/applications/assist/c$a;->c:Ljava/lang/String;

    return-object v0
.end method
