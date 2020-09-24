.class public final Lcom/android/settings/accounts/AccountPreferenceBase$a;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountPreferenceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/accounts/AccountPreferenceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceBase;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountPreferenceBase;->b()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$sTKWtMkSwfdS1bNAMCIM6JA4XkE(Lcom/android/settings/accounts/AccountPreferenceBase$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase$a;->a()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(I)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    new-instance p1, Lcom/android/settings/accounts/-$$Lambda$AccountPreferenceBase$a$sTKWtMkSwfdS1bNAMCIM6JA4XkE;

    invoke-direct {p1, p0}, Lcom/android/settings/accounts/-$$Lambda$AccountPreferenceBase$a$sTKWtMkSwfdS1bNAMCIM6JA4XkE;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase$a;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
