.class final Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIFactory_SystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DependencyInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V
    .locals 0

    .line 1227
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)V

    return-void
.end method

.method private injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1241
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1239
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1236
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1242
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1245
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1244
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1242
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarterDelegate(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1246
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1249
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1248
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1246
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1255
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1253
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1250
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1256
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1260
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1259
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1256
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1261
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1266
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1264
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1261
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1267
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1271
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1270
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1267
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1276
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1275
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1272
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1281
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1280
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1277
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1286
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1285
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1282
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1292
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1290
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1287
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1296
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1295
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1293
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1301
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1300
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1297
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1302
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1306
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1305
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1302
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1307
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1311
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1310
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1307
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1316
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1314
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1312
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1322
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1320
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1317
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1328
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1326
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1323
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1332
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1331
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1329
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1336
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1335
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1333
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1342
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1340
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1337
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1346
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1345
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1343
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1347
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1350
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1349
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1347
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1355
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1354
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1351
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1359
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1358
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1356
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1362
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1360
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1366
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1365
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1363
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1371
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1370
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1367
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1375
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1374
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1372
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1380
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1379
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1376
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1385
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1383
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1381
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1391
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1389
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1386
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1395
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1394
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1392
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1399
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1398
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1396
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1403
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1402
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1400
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1409
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1407
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1404
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1413
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1412
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1410
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1418
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1416
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1414
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1419
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1424
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1422
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1419
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1430
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1428
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1425
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMColorVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1434
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1433
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1431
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1439
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1437
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1435
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1443
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1442
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1440
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1447
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1446
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1444
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1452
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1450
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1448
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1453
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1456
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1455
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1453
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1457
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1462
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1460
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1457
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1463
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1466
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1465
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1463
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1470
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1469
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1467
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1471
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1474
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1473
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1471
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1478
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1477
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1475
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1479
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1482
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1481
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1479
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1483
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1486
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1485
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1483
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1490
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1489
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1487
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1494
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1493
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1491
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1498
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1497
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1495
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1499
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1502
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1501
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1499
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1506
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1505
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1503
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1507
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1512
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1510
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1507
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1516
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1515
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1513
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMInitController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1517
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1521
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1520
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1517
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1522
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1526
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1524
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1522
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1532
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1530
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1527
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1537
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1535
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1533
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1542
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1540
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1538
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1546
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1545
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1543
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1550
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1549
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1547
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1554
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1553
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1551
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1555
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1558
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1557
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1555
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1559
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1562
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1561
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1559
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAmbientPulseManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1563
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1567
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1565
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1563
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1572
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1570
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1568
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1573
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1576
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1575
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1573
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1577
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1581
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1579
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1577
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1585
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1584
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1582
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1586
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1590
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1588
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1586
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1591
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1594
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1593
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1591
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1599
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1597
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1595
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationInterruptionStateProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1603
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1602
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1600
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1604
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1607
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1606
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1604
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1612
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1610
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1608
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1616
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1615
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1613
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1621
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1619
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1617
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1626
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1624
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1622
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationAlertingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1627
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1631
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1629
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1627
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1632
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1635
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1634
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1632
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1636
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1640
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1638
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1636
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1644
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1643
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1641
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1648
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1647
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1645
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1652
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1651
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1649
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMQsBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1656
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1655
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1653
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1657
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1660
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1659
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1657
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1661
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1664
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1663
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1661
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1667
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1665
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1668
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1672
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1670
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1668
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1673
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1677
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1675
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1673
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1678
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1682
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1680
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1678
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1683
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1688
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1686
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1683
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1689
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1692
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1691
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1689
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1693
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1696
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1695
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1693
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1697
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1701
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1699
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1697
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMChannelEditorDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1702
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1706
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1704
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1702
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1707
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1711
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 1710
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 1707
    invoke-static {p1, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFalsingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object p1
.end method


# virtual methods
.method public createSystemUI(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 1232
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;

    return-void
.end method
