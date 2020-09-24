.class public final synthetic Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

.field private final synthetic f$1:Ljava/util/concurrent/atomic/AtomicLong;

.field private final synthetic f$2:Landroid/content/pm/PackageManager;

.field private final synthetic f$3:Ljava/util/concurrent/atomic/AtomicLong;

.field private final synthetic f$4:Lcom/android/settingslib/applications/f;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;Ljava/util/concurrent/atomic/AtomicLong;Landroid/content/pm/PackageManager;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/settingslib/applications/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$2:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$3:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$4:Lcom/android/settingslib/applications/f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$0:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$2:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$3:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;->f$4:Lcom/android/settingslib/applications/f;

    move-object v5, p1

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-static/range {v0 .. v5}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->lambda$4RlTqn7Hh5B3D1eyDQnckWQ9VY4(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;Ljava/util/concurrent/atomic/AtomicLong;Landroid/content/pm/PackageManager;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/settingslib/applications/f;Landroid/content/pm/UserInfo;)V

    return-void
.end method
