.class public Lcom/android/settings/applications/assist/c$a;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/pm/ServiceInfo;

.field public final b:Landroid/content/ComponentName;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/ComponentName;

.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/settings/applications/assist/c$a;->a:Landroid/content/pm/ServiceInfo;

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/c$a;->b:Landroid/content/ComponentName;

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/assist/c$a;->b:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/c$a;->c:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 67
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/applications/assist/c$a;->d:Landroid/content/ComponentName;

    .line 69
    invoke-virtual {p2, p1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/applications/assist/c$a;->e:Ljava/lang/CharSequence;

    .line 70
    iget-object p3, p0, Lcom/android/settings/applications/assist/c$a;->e:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/applications/assist/c$a;->f:Ljava/lang/String;

    .line 71
    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/c$a;->g:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/assist/c$a;->f:Ljava/lang/String;

    check-cast p1, Lcom/android/settings/applications/assist/c$a;

    iget-object p1, p1, Lcom/android/settings/applications/assist/c$a;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
